defmodule Operational.GRPCServer do
  use GRPC.Server,
    service: Petroedge.Operational.V1.OperationalDataService.Service

  alias Geo.Point

  alias Petroedge.Operational.V1.{
    GetAssetRequest,
    GetAssetResponse,
    RegisterAssetRequest,
    RegisterAssetResponse
  }

  alias Operational.Asset
  alias Operational.Assets
  alias Petroedge.Operational.V1.GeoPoint
  alias Petroedge.Operational.V1.Asset, as: ProtoAsset

  defp proto_asset_to_attrs(%ProtoAsset{} = asset),
    do: %{
      id: asset.id,
      name: asset.name,
      type: asset.type,
      parent_id: asset.parent_id,
      location: %Geo.Point{
        coordinates: {
          asset.location.longitude,
          asset.location.latitude
        },
        srid: 4326
      }
    }

  defp asset_to_proto(%Asset{location: %Point{coordinates: {longitude, latitude}}} = asset) do
    %ProtoAsset{
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

  def register_asset(request, materializer) do
    request
    |> GRPC.Stream.unary(materializer: materializer)
    |> GRPC.Stream.map(fn %RegisterAssetRequest{asset: proto_asset} ->
      case Operational.Assets.create(proto_asset_to_attrs(proto_asset)) do
        {:ok, asset} ->
          %RegisterAssetResponse{asset: asset_to_proto(asset)}

        {:error, changeset} ->
          GRPC.RPCError.exception(status: :invalid_argument, message: inspect(changeset.errors))
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

  def ingest_telemetry(_request, _stream) do
    unimplemented("IngestTelemetry")
  end

  def stream_telemetry(_request, _stream) do
    unimplemented("StreamTelemetry")
  end

  defp unimplemented(method) do
    raise GRPC.RPCError,
      status: :unimplemented,
      message: "method #{method} not implemented"
  end
end
