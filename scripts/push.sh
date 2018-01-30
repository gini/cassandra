#!/bin/bash
set -e

if [ -z $DOCKER_USER -o -z $DOCKER_PASSWORD ] ; then
  echo "Missing env variables for pushing to the docker hub"
  exit 2
fi  

docker login -u $DOCKER_USER -p $DOCKER_PASSWORD

docker push gini/cassandra:$VERSION
