defmodule Operational.GRPCEndpoint do
  use GRPC.Endpoint

  run(Operational.GRPCServer)

  if Application.compile_env(:operational, :start_grpc_reflection, false) do
    run(Operational.GRPCReflectionServer)
  end
end
