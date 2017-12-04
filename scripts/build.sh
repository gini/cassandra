#!/bin/bash
set -e

renderDockerfile () {
  mkdir -p $VERSION
  cp -a Dockerfile.template $VERSION/Dockerfile
  cp -a scripts/entrypoint.sh $VERSION/entrypoint.sh
  sed -i.bk "s/CASSANDRA_VERSION/$VERSION/g" $VERSION/Dockerfile
}

if [ -z $VERSION ] ; then
  echo "Something seriously screwed within TravisCI. Version var not set. Returning error code..."
  exit -1
fi

renderDockerfile

cd $VERSION

docker build -t "cassandra:$VERSION" .

cd -
