defmodule Operational.GRPC.TelemetryEndpoint do
  @moduledoc "Handlers for telemetry ingestion and streaming RPCs."
  require Logger

  alias Petroedge.Operational.V1.{
    IngestTelemetryRequest,
    IngestTelemetryResponse,
    StreamTelemetryRequest,
    StreamTelemetryResponse,
    TelemetryError
  }

  alias Operational.{Assets, Telemetry, Telemetries}
  alias Petroedge.Operational.V1.TelemetryEnvelope, as: ProtoTelemetry

  def ingest_telemetry(requests, _) do
    result =
      requests
      |> Stream.with_index()
      |> Enum.reduce(%{accepted: 0, rejected: 0, errors: []}, fn {request, index}, acc ->
        ingest_request(request, index, acc)
      end)

    %IngestTelemetryResponse{
      accepted: result.accepted,
      rejected: result.rejected,
      errors: Enum.reverse(result.errors)
    }
  end

  @error_messages %{
    missing_telemetry: "telemetry payload is required",
    missing_asset: "asset does not exist",
    missing_observed_at: "observed_at is required",
    invalid_observed_at: "observed_at is invalid",
    missing_measurements: "measurements are required",
    already_processed: "event_id was already processed",
    event_id_conflict: "event_id belongs to a different telemetry event",
    invalid_telemetry: "telemetry failed validation"
  }

  defp ingest_request(%IngestTelemetryRequest{telemetry: nil}, index, acc) do
    reject(acc, index, :missing_telemetry)
  end

  defp ingest_request(%IngestTelemetryRequest{telemetry: telemetry}, index, acc) do
    with {:ok, attrs} <- proto_telemetry_to_attrs(telemetry) do
      persist_telemetry(attrs, index, acc)
    else
      {:error, code} -> reject(acc, index, code)
    end
  end

  defp ingest_request(_request, index, acc) do
    reject(acc, index, :invalid_telemetry)
  end

  defp proto_telemetry_to_attrs(%ProtoTelemetry{} = telemetry) do
    with {:ok, observed_at} <- timestamp_to_datetime(telemetry.observed_at) do
      {:ok,
       %{
         event_id: empty_to_nil(telemetry.event_id),
         asset_id: empty_to_nil(telemetry.asset_id),
         observed_at: observed_at,
         measurements: telemetry.measurements,
         source: empty_to_nil(telemetry.source)
       }}
    end
  end

  defp proto_telemetry_to_attrs(_telemetry), do: {:error, :invalid_telemetry}

  defp empty_to_nil(""), do: nil
  defp empty_to_nil(value), do: value

  defp timestamp_to_datetime(nil), do: {:error, :missing_observed_at}

  defp timestamp_to_datetime(%Google.Protobuf.Timestamp{seconds: seconds, nanos: nanos})
       when is_integer(seconds) and is_integer(nanos) and nanos >= 0 and nanos < 1_000_000_000 do
    case DateTime.from_unix(seconds * 1_000_000_000 + nanos, :nanosecond) do
      {:ok, datetime} -> {:ok, DateTime.truncate(datetime, :microsecond)}
      {:error, _reason} -> {:error, :invalid_observed_at}
    end
  end

  defp timestamp_to_datetime(_timestamp), do: {:error, :invalid_observed_at}

  defp persist_telemetry(attrs, index, acc) do
    case telemetry_store().create(attrs) do
      {:ok, _event} ->
        %{acc | accepted: acc.accepted + 1}

      {:error, %Ecto.Changeset{} = changeset} ->
        reject(acc, index, changeset_error_code(changeset, attrs))
    end
  rescue
    error in DBConnection.ConnectionError ->
      Logger.error("telemetry storage unavailable", exception: error.__struct__)
      raise storage_error(:unavailable, "telemetry storage unavailable")

    error in Postgrex.Error ->
      Logger.error("telemetry persistence failed", exception: error.__struct__)
      raise storage_error(:internal, "telemetry persistence failed")

    error ->
      Logger.error("telemetry persistence failed", exception: error.__struct__)
      raise storage_error(:internal, "telemetry persistence failed")
  end

  defp telemetry_store do
    Application.get_env(:operational, :telemetry_store, Telemetries)
  end

  defp changeset_error_code(changeset, attrs) do
    cond do
      changeset_error?(changeset, :event_id, :constraint, :unique) ->
        duplicate_event_code(attrs)

      changeset_error?(changeset, :asset_id, :constraint, :foreign) ->
        :missing_asset

      changeset_error?(changeset, :asset_id, :validation, :required) ->
        :missing_asset

      changeset_error?(changeset, :observed_at, :validation, :required) ->
        :missing_observed_at

      changeset_error?(changeset, :measurements, :validation, :required) or
          changeset_error?(changeset, :measurements, :validation, :not_empty) ->
        :missing_measurements

      true ->
        :invalid_telemetry
    end
  end

  defp changeset_error?(%Ecto.Changeset{errors: errors}, field, key, value) do
    case Keyword.get(errors, field) do
      {_message, options} -> Keyword.get(options, key) == value
      nil -> false
    end
  end

  defp duplicate_event_code(%{event_id: event_id} = attrs) when is_binary(event_id) do
    case Telemetries.get_by_event_id(event_id) do
      %Telemetry{} = existing ->
        if same_telemetry?(existing, attrs), do: :already_processed, else: :event_id_conflict

      nil ->
        :already_processed
    end
  end

  defp duplicate_event_code(_attrs), do: :invalid_telemetry

  defp same_telemetry?(existing, attrs) do
    existing.asset_id == attrs.asset_id and
      existing.observed_at == attrs.observed_at and
      existing.measurements == attrs.measurements and
      existing.source == attrs.source
  end

  defp reject(acc, index, code) do
    Logger.warning("telemetry rejected", event_index: index, error_code: code)

    error = %TelemetryError{
      index: index,
      code: Atom.to_string(code),
      message: Map.fetch!(@error_messages, code)
    }

    %{acc | rejected: acc.rejected + 1, errors: [error | acc.errors]}
  end

  defp storage_error(status, message),
    do: GRPC.RPCError.exception(status: status, message: message)

  def stream_telemetry(%StreamTelemetryRequest{} = request, materializer) do
    try do
      with {:ok, asset_id} <- validate_stream_asset_id(request.asset_id),
           {:ok, from_datetime} <- optional_timestamp_to_datetime(request.from),
           {:ok, _asset} <- Assets.get(asset_id) do
        asset_id
        |> Telemetries.list_for_asset(from: from_datetime)
        |> Enum.map(&telemetry_to_response/1)
        |> GRPC.Stream.from(stages: 1, max_demand: 1)
        |> GRPC.Stream.run_with(materializer)
      else
        {:error, :missing_asset} ->
          raise GRPC.RPCError,
            status: :invalid_argument,
            message: "asset_id is required"

        {:error, :invalid_observed_at} ->
          raise GRPC.RPCError,
            status: :invalid_argument,
            message: "from is invalid"

        {:error, :not_found} ->
          raise GRPC.RPCError,
            status: :not_found,
            message: "asset not found"
      end
    rescue
      error in DBConnection.ConnectionError ->
        Logger.error("telemetry stream unavailable", exception: error.__struct__)
        raise storage_error(:unavailable, "telemetry storage unavailable")

      error in Postgrex.Error ->
        Logger.error("telemetry stream failed", exception: error.__struct__)
        raise storage_error(:internal, "telemetry stream failed")
    end
  end

  defp validate_stream_asset_id(asset_id) when is_binary(asset_id) and byte_size(asset_id) > 0,
    do: {:ok, asset_id}

  defp validate_stream_asset_id(_asset_id), do: {:error, :missing_asset}

  defp optional_timestamp_to_datetime(nil), do: {:ok, nil}
  defp optional_timestamp_to_datetime(timestamp), do: timestamp_to_datetime(timestamp)

  defp telemetry_to_response(%Telemetry{} = telemetry) do
    %StreamTelemetryResponse{
      telemetry: %ProtoTelemetry{
        event_id: telemetry.event_id || "",
        asset_id: telemetry.asset_id,
        observed_at: datetime_to_timestamp(telemetry.observed_at),
        measurements: telemetry.measurements,
        source: telemetry.source || ""
      }
    }
  end

  defp datetime_to_timestamp(%DateTime{} = datetime) do
    total_microseconds = DateTime.to_unix(datetime, :microsecond)
    seconds = div(total_microseconds, 1_000_000)
    microseconds = rem(total_microseconds, 1_000_000)
    {seconds, microseconds} = normalize_timestamp_parts({seconds, microseconds})

    %Google.Protobuf.Timestamp{
      seconds: seconds,
      nanos: microseconds * 1_000
    }
  end

  defp normalize_timestamp_parts({seconds, microseconds}) when microseconds < 0,
    do: {seconds - 1, microseconds + 1_000_000}

  defp normalize_timestamp_parts(parts), do: parts
end
