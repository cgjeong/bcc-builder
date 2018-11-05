#!/bin/bash

set -e

# build docker image named "bcc-builder"
pushd docker
docker build -t bcc-builder -f Dockerfile.bcc .
popd

# run a docker container based on "bcc-builder" to build bcc and
# copy the output binaries into the current directory
docker run --rm -it -v $(pwd):$(pwd) bcc-builder "$(pwd)" $(id -u) $(id -g)
