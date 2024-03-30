.PHONY: all build copy

all: build copy

build:
	docker build -t rust_app:1.77 .

copy:
	mkdir -p ./target
	docker create --name temp_container rust_app:1.77
	docker cp temp_container:/app/target/x86_64-unknown-linux-gnu ./target/x86_64-unknown-linux-gnu
	docker rm temp_container
