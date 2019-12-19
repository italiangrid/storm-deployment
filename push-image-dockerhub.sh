#!/bin/bash
set -ex

tags=${tags:-"centos6"}

for t in ${tags}; do

  echo "Pushing italiangrid/storm-deployment:${t} on dockerhub ..."
  docker push italiangrid/storm-deployment:${t}

done
