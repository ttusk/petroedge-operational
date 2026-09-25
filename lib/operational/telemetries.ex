defmodule Operational.Telemetries do
  alias Operational.{Telemetry, Repo}

  import Ecto.Query

  def list_for_asset(asset_id, opts \\ []) do
    from_datetime = Keyword.get(opts, :from)

    Telemetry
    |> where([telemetry], telemetry.asset_id == ^asset_id)
    |> maybe_filter_from(from_datetime)
    |> order_by([telemetry], asc: telemetry.observed_at)
    |> Repo.all()
  end

  defp maybe_filter_from(query, nil), do: query

  defp maybe_filter_from(query, %DateTime{} = from_datetime) do
    where(query, [telemetry], telemetry.observed_at >= ^from_datetime)
  end

  def create(attrs) when is_map(attrs) do
    %Telemetry{}
    |> Telemetry.changeset(attrs)
    |> Repo.insert()
  end

  def get_by_event_id(event_id) when is_binary(event_id) do
    Repo.get_by(Telemetry, event_id: event_id)
  end
end
