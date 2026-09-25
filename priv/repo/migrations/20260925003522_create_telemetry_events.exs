defmodule Operational.Repo.Migrations.CreateTelemetryEvents do
  use Ecto.Migration

  def change do
    create table(:telemetry_events) do
      add(:asset_id, references(:assets, type: :string, on_delete: :nothing), null: false)
      add(:observed_at, :utc_datetime_usec, null: false)
      add(:measurements, :map, null: false)
      add(:source, :string)
      timestamps(type: :utc_datetime_usec)
    end

    create(index(:telemetry_events, [:asset_id, :observed_at]))
  end
end
