generate-auth:
	@rm -rf pkg/pb/auth/*
	protoc -I api/proto/auth \
   --go_out=./pkg/pb/auth --go_opt=paths=source_relative \
   --go-grpc_out=./pkg/pb/auth --go-grpc_opt=paths=source_relative \
   auth.proto

generate: generate-auth
