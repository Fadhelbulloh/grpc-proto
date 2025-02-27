pb-go:
	@protoc \
	--go_out=./$(MODULE)/pb --go_opt=paths=source_relative \
	--go-grpc_out=./$(MODULE)/pb --go-grpc_opt=paths=source_relative,require_unimplemented_servers=false \
		./$(MODULE)/*.proto
