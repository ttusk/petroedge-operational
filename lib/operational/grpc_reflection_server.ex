defmodule Operational.GRPCReflectionServer do
  use GrpcReflection.Server,
    version: :v1,
    services: [Petroedge.Operational.V1.OperationalDataService.Service]
end
