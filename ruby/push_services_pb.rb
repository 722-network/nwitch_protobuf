# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: push.proto for package 'NWitchGRPC.Protobuf'

require 'grpc'
require 'push_pb'

module NWitchGRPC
  module Protobuf
    module Notification
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'NWitchGRPC.Protobuf.Notification'

        rpc :Push, PushRequest, PushResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
