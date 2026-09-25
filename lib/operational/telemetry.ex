defmodule Operational.Telemetry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "telemetry_events" do
    belongs_to(:asset, Operational.Asset, type: :string)
    field(:observed_at, :utc_datetime_usec)
    field(:measurements, :map)
    field(:source, :string)

    timestamps(type: :utc_datetime_usec)
  end

  def changeset(telemetry, attrs) do
    telemetry
    |> cast(attrs, [:asset_id, :observed_at, :measurements, :source])
    |> validate_required([:asset_id, :observed_at, :measurements])
    |> foreign_key_constraint(:asset_id)
  end
end
