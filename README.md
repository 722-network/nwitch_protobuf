# nwitch gRPC proxy Google Protobuf specifications

## gRPC tools setup

**To Ruby**
```
$ gem install grpc
$ gem install grpc-tools
```

**To Elixir**  
Install protobuf-elixir as specified [here](https://github.com/tony612/protobuf-elixir#usage).

## Compiling

**Compile to Ruby**
```
grpc_tools_ruby_protoc -I . --ruby_out=./ruby/ --grpc_out=./ruby/ *.proto
```

**Compile to Elixir**
```
protoc --elixir_out=plugins=grpc:./elixir/ *.proto
```
