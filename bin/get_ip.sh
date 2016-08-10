#!/usr/bin/env sh

DOCKER_CONTAINER_NAME=$1
DOCKER_CONTAINER_ID=$(docker ps --format '{{ .Names }}' | grep $DOCKER_CONTAINER_NAME | awk '{print $1}')
docker inspect --format '{{ .NetworkSettings.Networks.docker_default.IPAddress }}' $DOCKER_CONTAINER_ID
