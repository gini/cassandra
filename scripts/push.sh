#!/bin/bash
set -e

docker images 

docker login -u $DOCKER_LOGIN -p $DOCKER_PWD

docker push gini/cassandra:$VERSION
