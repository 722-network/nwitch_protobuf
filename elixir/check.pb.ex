defmodule NWitchGRPC.Protobuf.HealthCheckRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t()
        }
  defstruct [:service]

  field :service, 1, type: :string
end

defmodule NWitchGRPC.Protobuf.HealthCheckResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: integer
        }
  defstruct [:status]

  field :status, 1, type: NWitchGRPC.Protobuf.HealthCheckResponse.ServingStatus, enum: true
end

defmodule NWitchGRPC.Protobuf.HealthCheckResponse.ServingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field :UNKNOWN, 0
  field :SERVING, 1
  field :NOT_SERVING, 2
end

defmodule NWitchGRPC.Protobuf.Health.Service do
  @moduledoc false
  use GRPC.Service, name: "NWitchGRPC.Protobuf.Health"

  rpc :Check, NWitchGRPC.Protobuf.HealthCheckRequest, NWitchGRPC.Protobuf.HealthCheckResponse
end

defmodule NWitchGRPC.Protobuf.Health.Stub do
  @moduledoc false
  use GRPC.Stub, service: NWitchGRPC.Protobuf.Health.Service
end
