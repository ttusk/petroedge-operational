defmodule Operational.Repo.Migrations.CreateAssets do
  use Ecto.Migration

  def up do
    execute("CREATE EXTENSION IF NOT EXISTS postgis")

    create table(:assets, primary_key: false) do
      add(:id, :string, primary_key: true)
      add(:name, :string, null: false)
      add(:type, :string, null: false)
      add(:parent_id, :string)
      timestamps(type: :utc_datetime_usec)
    end

    execute("""
    ALTER TABLE assets
    ADD COLUMN location geography(Point, 4326) NOT NULL
    """)

    create(index(:assets, [:parent_id]))
    execute("CREATE INDEX assets_location_gist_index ON assets USING GIST (location)")
  end

  def down do
    drop(table(:assets))
    execute("DROP EXTENSION IF EXISTS postgis")
  end
end
