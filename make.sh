#!/usr/bin/env bash
for GOOS in darwin linux windows; do
  for GOARCH in 386 amd64; do
    echo "Building $GOOS-$GOARCH"
    export GOOS=$GOOS
    export GOARCH=$GOARCH
    go build -o bin/postman-load-testing-$GOOS-$GOARCH
  done
done