defmodule Operational.GRPC.AssetEndpoint do
  @moduledoc "Handlers for asset registration and lookup RPCs."
  alias Geo.Point

  alias Petroedge.Operational.V1.{
    GetAssetRequest,
    GetAssetResponse,
    RegisterAssetRequest,
    RegisterAssetResponse,
    GeoPoint
  }

  alias Petroedge.Operational.V1.Asset, as: ProtoAsset
  alias Operational.{Asset, Assets}

  def register_asset(request, materializer) do
    request
    |> GRPC.Stream.unary(materializer: materializer)
    |> GRPC.Stream.map(fn %RegisterAssetRequest{asset: proto_asset} ->
      with {:ok, attrs} <- proto_asset_to_attrs(proto_asset),
           {:ok, asset} <- Assets.create(attrs) do
        %RegisterAssetResponse{asset: asset_to_proto(asset)}
      else
        {:error, message} when is_binary(message) ->
          invalid_argument(message)

        {:error, changeset} ->
          invalid_argument("asset failed validation: #{inspect(changeset.errors)}")
      end
    end)
    |> GRPC.Stream.run()
  end

  def get_asset(request, materializer) do
    request
    |> GRPC.Stream.unary(materializer: materializer)
    |> GRPC.Stream.map(fn %GetAssetRequest{id: id} ->
      case Assets.get(id) do
        {:ok, asset} ->
          %GetAssetResponse{asset: asset_to_proto(asset)}

        {:error, :not_found} ->
          GRPC.RPCError.exception(
            status: :not_found,
            message: "asset not found"
          )
      end
    end)
    |> GRPC.Stream.run()
  end

  defp proto_asset_to_attrs(%ProtoAsset{location: %GeoPoint{} = location} = asset) do
    {:ok,
     %{
       id: asset.id,
       name: asset.name,
       type: asset.type,
       parent_id: asset.parent_id,
       location: %Geo.Point{
         coordinates: {
           location.longitude,
           location.latitude
         },
         srid: 4326
       }
     }}
  end

  defp proto_asset_to_attrs(%ProtoAsset{}), do: {:error, "asset.location is required"}
  defp proto_asset_to_attrs(_asset), do: {:error, "asset is required"}

  defp invalid_argument(message),
    do: GRPC.RPCError.exception(status: :invalid_argument, message: message)

  defp asset_to_proto(%Asset{location: %Point{coordinates: {longitude, latitude}}} = asset),
    do: %ProtoAsset{
      id: asset.id,
      name: asset.name,
      type: asset.type,
      parent_id: asset.parent_id,
      location: %GeoPoint{
        latitude: latitude,
        longitude: longitude
      }
    }
end
