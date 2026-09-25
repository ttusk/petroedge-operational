defmodule Operational.GRPCNetworkTest do
  use ExUnit.Case, async: false

  import Ecto.Query

  alias Google.Protobuf.Timestamp
  alias Operational.{Asset, Repo, Telemetries}

  alias Petroedge.Operational.V1.{
    RegisterAssetRequest,
    RegisterAssetResponse,
    StreamTelemetryRequest,
    StreamTelemetryResponse,
    TelemetryEnvelope
  }

  alias Petroedge.Operational.V1.Asset, as: ProtoAsset
  alias Petroedge.Operational.V1.GeoPoint
  alias Petroedge.Operational.V1.OperationalDataService.Stub

  @port 50_052

  setup_all do
    Ecto.Migrator.run(Repo, :up, all: true)

    start_supervised!(
      {GRPC.Server.Supervisor,
       endpoint: Operational.GRPCEndpoint, port: @port, start_server: true}
    )

    {:ok, channel} = GRPC.Stub.connect("127.0.0.1:#{@port}", adapter: GRPC.Client.Adapters.Gun)

    on_exit(fn -> GRPC.Stub.disconnect(channel) end)

    {:ok, channel: channel}
  end

  test "serves asset registration and telemetry streaming over gRPC", %{channel: channel} do
    asset_id = unique_id("network-asset")

    on_exit(fn ->
      Repo.delete_all(
        from(telemetry in Operational.Telemetry, where: telemetry.asset_id == ^asset_id)
      )

      Repo.delete_all(from(asset in Asset, where: asset.id == ^asset_id))
    end)

    assert {:ok, %RegisterAssetResponse{asset: %ProtoAsset{id: ^asset_id}}} =
             Stub.register_asset(channel, %RegisterAssetRequest{
               asset: %ProtoAsset{
                 id: asset_id,
                 name: "Network asset",
                 type: "sensor",
                 location: %GeoPoint{latitude: 1.0, longitude: 2.0}
               }
             })

    assert {:ok, _telemetry} =
             Telemetries.create(%{
               event_id: unique_id("network-event"),
               asset_id: asset_id,
               observed_at: DateTime.from_unix!(1_700_000_000),
               measurements: %{"temperature" => 20.0},
               source: "network-test"
             })

    assert {:ok, responses} =
             Stub.stream_telemetry(channel, %StreamTelemetryRequest{
               asset_id: asset_id,
               from: %Timestamp{seconds: 1_700_000_000}
             })

    assert [
             %StreamTelemetryResponse{
               telemetry: %TelemetryEnvelope{
                 asset_id: ^asset_id,
                 observed_at: %Timestamp{seconds: 1_700_000_000, nanos: 0},
                 measurements: %{"temperature" => 20.0}
               }
             }
           ] = Enum.map(responses, fn {:ok, response} -> response end)
  end

  defp unique_id(prefix), do: "#{prefix}-#{System.unique_integer([:positive])}"
end
