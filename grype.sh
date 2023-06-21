#!/bin/bash

mkdir -p $HOME/.grype

docker run -ti --rm \
  --env GRYPE_DB_CACHE_DIR=/cache \
  --volume $HOME/.grype:/cache \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  anchore/grype \
  gt:latest
#  --user $(id -u):$(id -g) \
