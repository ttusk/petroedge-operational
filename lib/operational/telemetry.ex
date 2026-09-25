defmodule Operational.Telemetry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "telemetry_events" do
    belongs_to(:asset, Operational.Asset, type: :string)
    field(:event_id, :string)
    field(:observed_at, :utc_datetime_usec)
    field(:measurements, :map)
    field(:source, :string)

    timestamps(type: :utc_datetime_usec)
  end

  def changeset(telemetry, attrs) do
    telemetry
    |> cast(attrs, [:event_id, :asset_id, :observed_at, :measurements, :source])
    |> validate_required([:asset_id, :observed_at, :measurements])
    |> validate_measurements()
    |> foreign_key_constraint(:asset_id)
    |> unique_constraint(:event_id, name: :telemetry_events_event_id_index)
  end

  defp validate_measurements(changeset) do
    case get_field(changeset, :measurements) do
      measurements when is_map(measurements) and map_size(measurements) == 0 ->
        add_error(changeset, :measurements, "can't be empty", validation: :not_empty)

      _ ->
        changeset
    end
  end
end
