defmodule Operational.Asset do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, autogenerate: false}

  schema "assets" do
    field(:name, :string)
    field(:type, :string)
    field(:location, Geo.PostGIS.Geometry)
    field(:parent_id, :string)

    timestamps(type: :utc_datetime_usec)
  end

  def changeset(asset, attrs) do
    asset
    |> cast(attrs, [:id, :name, :type, :location, :parent_id])
    |> validate_required([:id, :name, :type, :location])
  end
end
