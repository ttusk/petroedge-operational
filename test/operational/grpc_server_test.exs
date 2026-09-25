defmodule Operational.GRPCServerTest.UnavailableStore do
  def create(_attrs) do
    raise DBConnection.ConnectionError, "test connection failure"
  end
end

defmodule Operational.GRPCServerTest.FailingStore do
  def create(_attrs) do
    raise "test persistence failure"
  end
end

defmodule Operational.GRPCServerTest.FailAfterFirstStore do
  def create(%{event_id: <<"fail-after-first", _rest::binary>>}) do
    raise DBConnection.ConnectionError, "test connection failure"
  end

  def create(attrs), do: Operational.Telemetries.create(attrs)
end

defmodule Operational.GRPCServerTest do
  use ExUnit.Case, async: false

  import Ecto.Query

  alias Google.Protobuf.Timestamp
  alias Operational.{Asset, Assets, Repo, Telemetries, Telemetry}

  alias Petroedge.Operational.V1.{
    GetAssetRequest,
    GetAssetResponse,
    IngestTelemetryRequest,
    IngestTelemetryResponse,
    RegisterAssetRequest,
    RegisterAssetResponse,
    StreamTelemetryRequest,
    StreamTelemetryResponse,
    TelemetryEnvelope,
    TelemetryError
  }

  alias Petroedge.Operational.V1.Asset, as: ProtoAsset
  alias Petroedge.Operational.V1.GeoPoint

  @moduletag :integration

  setup_all do
    Ecto.Migrator.run(Repo, :up, all: true)
    :ok
  end

  setup do
    asset_id = unique_id("asset")

    {:ok, _asset} =
      Assets.create(%{
        id: asset_id,
        name: "Test asset",
        type: "sensor",
        location: %Geo.Point{coordinates: {0.0, 0.0}, srid: 4326}
      })

    on_exit(fn ->
      Repo.delete_all(from(telemetry in Telemetry, where: telemetry.asset_id == ^asset_id))
      Repo.delete_all(from(asset in Asset, where: asset.id == ^asset_id))
    end)

    {:ok, asset_id: asset_id}
  end

  test "registers an asset and returns its coordinates" do
    asset_id = unique_id("registered")

    on_exit(fn ->
      Repo.delete_all(from(telemetry in Telemetry, where: telemetry.asset_id == ^asset_id))
      Repo.delete_all(from(asset in Asset, where: asset.id == ^asset_id))
    end)

    response =
      unary_call(%RegisterAssetRequest{
        asset: %ProtoAsset{
          id: asset_id,
          name: "Registered asset",
          type: "pump",
          location: %GeoPoint{latitude: 10.5, longitude: 20.25}
        }
      })

    assert %RegisterAssetResponse{
             asset: %ProtoAsset{
               id: ^asset_id,
               name: "Registered asset",
               type: "pump",
               location: %GeoPoint{latitude: 10.5, longitude: 20.25}
             }
           } = response
  end

  test "gets an existing asset with its coordinates", %{asset_id: asset_id} do
    response = unary_call(%GetAssetRequest{id: asset_id})

    assert %GetAssetResponse{
             asset: %ProtoAsset{
               id: ^asset_id,
               name: "Test asset",
               type: "sensor",
               location: %GeoPoint{} = location
             }
           } = response

    assert location.latitude == 0.0
    assert location.longitude == 0.0
  end

  test "rejects an asset without a location" do
    error =
      assert_raise GRPC.RPCError, fn ->
        unary_call(%RegisterAssetRequest{
          asset: %ProtoAsset{id: unique_id("invalid"), name: "Invalid", type: "sensor"}
        })
      end

    assert error.status == GRPC.Status.invalid_argument()
  end

  test "streams telemetry from an inclusive timestamp in order", %{asset_id: asset_id} do
    Enum.each([{1_700_000_000, 21.0}, {1_700_000_001, 22.0}, {1_700_000_002, 23.0}], fn {
                                                                                          seconds,
                                                                                          temperature
                                                                                        } ->
      assert {:ok, _telemetry} =
               Telemetries.create(%{
                 event_id: unique_id("stream"),
                 asset_id: asset_id,
                 observed_at: DateTime.from_unix!(seconds),
                 measurements: %{"temperature" => temperature},
                 source: "stream-test"
               })
    end)

    assert [
             %StreamTelemetryResponse{
               telemetry: %TelemetryEnvelope{
                 observed_at: %Timestamp{seconds: 1_700_000_001, nanos: 0},
                 measurements: %{"temperature" => 22.0}
               }
             },
             %StreamTelemetryResponse{
               telemetry: %TelemetryEnvelope{
                 observed_at: %Timestamp{seconds: 1_700_000_002, nanos: 0},
                 measurements: %{"temperature" => 23.0}
               }
             }
           ] =
             stream_replies(%StreamTelemetryRequest{
               asset_id: asset_id,
               from: %Timestamp{seconds: 1_700_000_001}
             })
  end

  test "rejects streaming for an unknown asset" do
    error =
      assert_raise GRPC.RPCError, fn ->
        stream_replies(%StreamTelemetryRequest{asset_id: unique_id("missing-asset")})
      end

    assert error.status == GRPC.Status.not_found()
  end

  test "rejects an invalid stream timestamp", %{asset_id: asset_id} do
    error =
      assert_raise GRPC.RPCError, fn ->
        stream_replies(%StreamTelemetryRequest{
          asset_id: asset_id,
          from: %Timestamp{seconds: 0, nanos: 1_000_000_000}
        })
      end

    assert error.status == GRPC.Status.invalid_argument()
  end

  test "accepts valid telemetry and persists one event", %{asset_id: asset_id} do
    response = ingest([request(telemetry(asset_id))])

    assert %IngestTelemetryResponse{accepted: 1, rejected: 0, errors: []} = response
    assert telemetry_count(asset_id) == 1
  end

  test "returns a stable error for missing telemetry" do
    response = ingest([%IngestTelemetryRequest{}])

    assert %IngestTelemetryResponse{
             accepted: 0,
             rejected: 1,
             errors: [%TelemetryError{index: 0, code: "missing_telemetry"}]
           } = response
  end

  test "returns a stable error for invalid timestamps", %{asset_id: asset_id} do
    invalid_timestamp = %Timestamp{seconds: 0, nanos: 1_000_000_000}
    response = ingest([request(telemetry(asset_id, observed_at: invalid_timestamp))])

    assert %IngestTelemetryResponse{
             accepted: 0,
             rejected: 1,
             errors: [%TelemetryError{index: 0, code: "invalid_observed_at"}]
           } = response
  end

  test "returns missing_observed_at when the timestamp is omitted", %{asset_id: asset_id} do
    response = ingest([request(telemetry(asset_id, observed_at: nil))])

    assert %IngestTelemetryResponse{
             accepted: 0,
             rejected: 1,
             errors: [%TelemetryError{index: 0, code: "missing_observed_at"}]
           } = response
  end

  test "returns missing_asset for an unknown asset" do
    response = ingest([request(telemetry(unique_id("missing-asset")))])

    assert %IngestTelemetryResponse{
             accepted: 0,
             rejected: 1,
             errors: [%TelemetryError{index: 0, code: "missing_asset"}]
           } = response
  end

  test "returns missing_measurements for an empty measurement map", %{asset_id: asset_id} do
    response = ingest([request(telemetry(asset_id, measurements: %{}))])

    assert %IngestTelemetryResponse{
             accepted: 0,
             rejected: 1,
             errors: [%TelemetryError{index: 0, code: "missing_measurements"}]
           } = response
  end

  test "partially accepts a stream and preserves zero-based error indexes", %{asset_id: asset_id} do
    requests = [
      request(telemetry(asset_id)),
      %IngestTelemetryRequest{},
      request(telemetry(asset_id, observed_at: %Timestamp{seconds: 0, nanos: -1})),
      request(telemetry(unique_id("missing-asset")))
    ]

    response = ingest(requests)

    assert %IngestTelemetryResponse{
             accepted: 1,
             rejected: 3,
             errors: [
               %TelemetryError{index: 1, code: "missing_telemetry"},
               %TelemetryError{index: 2, code: "invalid_observed_at"},
               %TelemetryError{index: 3, code: "missing_asset"}
             ]
           } = response

    assert telemetry_count(asset_id) == 1
  end

  test "treats retries with the same event id as idempotent", %{asset_id: asset_id} do
    event = telemetry(asset_id, event_id: unique_id("event"))

    assert %IngestTelemetryResponse{accepted: 1, rejected: 0} = ingest([request(event)])

    assert %IngestTelemetryResponse{
             accepted: 0,
             rejected: 1,
             errors: [%TelemetryError{code: "already_processed"}]
           } = ingest([request(event)])

    conflicting_event = %{event | measurements: %{"temperature" => 22.5}}

    assert %IngestTelemetryResponse{
             accepted: 0,
             rejected: 1,
             errors: [%TelemetryError{code: "event_id_conflict"}]
           } = ingest([request(conflicting_event)])

    assert telemetry_count(asset_id) == 1
  end

  test "makes accepted events safe to retry after a partial storage failure", %{
    asset_id: asset_id
  } do
    first = telemetry(asset_id, event_id: unique_id("first"))
    failure_event_id = unique_id("fail-after-first")
    second = telemetry(asset_id, event_id: failure_event_id)
    requests = [request(first), request(second)]

    assert_raise GRPC.RPCError, fn ->
      with_telemetry_store(Operational.GRPCServerTest.FailAfterFirstStore, fn ->
        ingest(requests)
      end)
    end

    assert telemetry_count(asset_id) == 1

    assert %IngestTelemetryResponse{
             accepted: 1,
             rejected: 1,
             errors: [%TelemetryError{index: 0, code: "already_processed"}]
           } = ingest(requests)

    assert telemetry_count(asset_id) == 2
  end

  test "maps connection failures to unavailable", %{asset_id: asset_id} do
    error =
      assert_raise GRPC.RPCError, fn ->
        with_telemetry_store(Operational.GRPCServerTest.UnavailableStore, fn ->
          ingest([request(telemetry(asset_id))])
        end)
      end

    assert error.status == GRPC.Status.unavailable()
  end

  test "maps unexpected persistence failures to internal", %{asset_id: asset_id} do
    error =
      assert_raise GRPC.RPCError, fn ->
        with_telemetry_store(Operational.GRPCServerTest.FailingStore, fn ->
          ingest([request(telemetry(asset_id))])
        end)
      end

    assert error.status == GRPC.Status.internal()
  end

  defp unary_call(%RegisterAssetRequest{} = request),
    do: unary_call(request, &Operational.GRPCServer.register_asset/2)

  defp unary_call(%GetAssetRequest{} = request),
    do: unary_call(request, &Operational.GRPCServer.get_asset/2)

  defp unary_call(request, handler) do
    handler.(request, reply_materializer(:unary))
    assert_receive {:grpc_reply, response}
    response
  end

  defp stream_replies(request) do
    Operational.GRPCServer.stream_telemetry(request, reply_materializer(:server_stream))
    collect_replies([])
  end

  defp collect_replies(replies) do
    receive do
      {:grpc_reply, reply} -> collect_replies([reply | replies])
    after
      100 -> Enum.reverse(replies)
    end
  end

  defp reply_materializer(grpc_type) do
    parent = self()

    %GRPC.Server.Stream{
      grpc_type: grpc_type,
      __interface__: %{
        send_reply: fn _stream, reply, _opts ->
          send(parent, {:grpc_reply, reply})
          :ok
        end
      }
    }
  end

  defp ingest(requests), do: Operational.GRPCServer.ingest_telemetry(requests, nil)

  defp request(telemetry), do: %IngestTelemetryRequest{telemetry: telemetry}

  defp telemetry(asset_id, overrides \\ []) do
    defaults = %{
      asset_id: asset_id,
      observed_at: %Timestamp{seconds: 1_700_000_000, nanos: 123_000_000},
      measurements: %{"temperature" => 21.5},
      source: "test",
      event_id: unique_id("event")
    }

    struct(TelemetryEnvelope, Map.merge(defaults, Map.new(overrides)))
  end

  defp telemetry_count(asset_id) do
    Repo.aggregate(
      from(telemetry in Telemetry, where: telemetry.asset_id == ^asset_id),
      :count,
      :id
    )
  end

  defp with_telemetry_store(module, fun) do
    previous = Application.get_env(:operational, :telemetry_store)
    Application.put_env(:operational, :telemetry_store, module)

    try do
      fun.()
    after
      if previous do
        Application.put_env(:operational, :telemetry_store, previous)
      else
        Application.delete_env(:operational, :telemetry_store)
      end
    end
  end

  defp unique_id(prefix), do: "#{prefix}-#{System.unique_integer([:positive])}"
end
