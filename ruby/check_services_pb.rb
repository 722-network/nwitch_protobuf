# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: check.proto for package 'NWitchGRPC.Protobuf'

require 'grpc'
require 'check_pb'

module NWitchGRPC
  module Protobuf
    module Health
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'NWitchGRPC.Protobuf.Health'

        rpc :Check, HealthCheckRequest, HealthCheckResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
