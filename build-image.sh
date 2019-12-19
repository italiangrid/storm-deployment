#!/bin/bash
set -ex

if [ -z ${BRANCH_NAME+x} ]; then
  echo "BRANCH_NAME is unset"
  BRANCH_NAME=`git rev-parse --abbrev-ref HEAD`
else
  echo "BRANCH_NAME is set to '$BRANCH_NAME'"
fi

docker build --pull=false --rm=true -t italiangrid/storm-deployment:${BRANCH_NAME} .