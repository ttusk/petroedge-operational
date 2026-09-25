defmodule Operational.Telemetries do
  alias Operational.{Telemetry, Repo}

  import Ecto.Query

  def list_for_asset(asset_id) do
    from(telemetry in Telemetry,
      where: telemetry.asset_id == ^asset_id,
      order_by: [asc: telemetry.observed_at]
    )
    |> Repo.all()
  end

  def create(attrs) when is_map(attrs) do
    %Telemetry{}
    |> Telemetry.changeset(attrs)
    |> Repo.insert()
  end
end
