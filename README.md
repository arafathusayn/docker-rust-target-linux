[Dockerfile](./Dockerfile) to compile your rust app for Linux on different arch like M-series Mac

## Example build command

```
cd your_rust_source_code_directory

docker build -t rust_app:1.77 .
```

## [Makefile](./Makefile) commands

```
make all # for both build and copy
make build # only build the image
make copy # only copy the target directory
```
