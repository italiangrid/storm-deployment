#!/bin/bash
set -ex

if [ -z ${BRANCH_NAME+x} ]; then
  echo "BRANCH_NAME is unset"
  BRANCH_NAME=`git rev-parse --abbrev-ref HEAD`
else
  echo "BRANCH_NAME is set to '$BRANCH_NAME'"
fi

if [ -n "${DOCKER_REGISTRY_HOST}" ]; then
  docker tag italiangrid/storm-deployment:${BRANCH_NAME} ${DOCKER_REGISTRY_HOST}/italiangrid/storm-deployment:${BRANCH_NAME}
  docker push ${DOCKER_REGISTRY_HOST}/italiangrid/storm-deployment:${BRANCH_NAME}
fi