defmodule Operational.GRPCServer do
  @moduledoc "Dispatches generated gRPC callbacks to endpoint-specific handlers."
  use GRPC.Server,
    service: Petroedge.Operational.V1.OperationalDataService.Service

  alias Operational.GRPC.{AssetEndpoint, TelemetryEndpoint}

  defdelegate register_asset(request, materializer), to: AssetEndpoint
  defdelegate get_asset(request, materializer), to: AssetEndpoint
  defdelegate ingest_telemetry(requests, stream), to: TelemetryEndpoint
  defdelegate stream_telemetry(request, stream), to: TelemetryEndpoint
end
