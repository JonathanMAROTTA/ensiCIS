#!/bin/bash
cd "$(dirname $0)"

# Build docker image
if [[ "$@" =~ "-b" ]]; then
  docker build -t juice-shop-image .
fi

# Run docker container, remove old container if exists
docker rm -f juice-shop 2> /dev/null
docker run -d -p 3000:3000 --name juice-shop juice-shop-image