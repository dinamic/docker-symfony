#!/usr/bin/env sh
DOCKER_ID=$(docker ps | grep docker_$1 | awk '{print $1}')
docker exec -it $DOCKER_ID sh
