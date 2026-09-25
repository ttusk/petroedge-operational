defmodule Operational.Repo.Migrations.AddEventIdToTelemetryEvents do
  use Ecto.Migration

  def change do
    alter table(:telemetry_events) do
      add(:event_id, :string)
    end

    create(unique_index(:telemetry_events, [:event_id], where: "event_id IS NOT NULL"))
  end
end
