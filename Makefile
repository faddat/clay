all: build

build: mod
	@mkdir -p build/
    @go build -mod=readonly -o build/clayd ./cmd/clayd
    @git go build -mod=readonly -o build/claycli ./cmd/claycli
