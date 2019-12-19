#!/bin/bash
set -ex
tags=${tags:-"centos6"}

if [ -n "${DOCKER_REGISTRY_HOST}" ]; then
  for t in ${tags}; do
    docker tag italiangrid/storm-deployment:${t} ${DOCKER_REGISTRY_HOST}/italiangrid/storm-deployment:${t}
    docker push ${DOCKER_REGISTRY_HOST}/italiangrid/storm-deployment:${t}
  done
fi