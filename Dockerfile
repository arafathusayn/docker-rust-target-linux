FROM rust:1.77

WORKDIR /app

COPY . /app

ARG HOST_CC=gcc
ARG CC_x86_64_unknown_linux_gnu=/usr/bin/x86_64-linux-gnu-gcc
ARG CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=/usr/bin/x86_64-linux-gnu-gcc

RUN apt update && apt install gcc-x86-64-linux-gnu -y && rustup target add x86_64-unknown-linux-gnu && cargo build --release --target=x86_64-unknown-linux-gnu
