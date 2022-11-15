#!/bin/sh

TARGET_CONTAINERS=`docker ps -aq --filter name=test-app-`
if [ -n "$TARGET_CONTAINERS" ]; then
  docker rm $TARGET_CONTAINERS
  echo 'The containers have removed.'
else
  echo 'The containers for the app are not found.'
fi
