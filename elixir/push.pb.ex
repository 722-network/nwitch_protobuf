defmodule NWitchGRPCClient.Push.PushRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nwitch_token: String.t(),
          topic_name: String.t(),
          title: String.t(),
          message: String.t()
        }
  defstruct [:nwitch_token, :topic_name, :title, :message]

  field :nwitch_token, 1, type: :string
  field :topic_name, 2, type: :string
  field :title, 3, type: :string
  field :message, 4, type: :string
end

defmodule NWitchGRPCClient.Push.PushResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          success: boolean
        }
  defstruct [:success]

  field :success, 1, type: :bool
end

defmodule NWitchGRPCClient.Push.Notification.Service do
  @moduledoc false
  use GRPC.Service, name: "NWitchGRPCClient.Push.Notification"

  rpc :Push, NWitchGRPCClient.Push.PushRequest, NWitchGRPCClient.Push.PushResponse
end

defmodule NWitchGRPCClient.Push.Notification.Stub do
  @moduledoc false
  use GRPC.Stub, service: NWitchGRPCClient.Push.Notification.Service
end
