#!/usr/bin/env sh

DOCKER_PHP_ID=$(docker ps | grep docker_php | awk '{print $1}')

docker exec -it $DOCKER_PHP_ID sh -c "chown -R www-data:www-data ./app ./src ./vendor"
docker exec -it $DOCKER_PHP_ID sh -c "chmod -R 755 ./app/logs"
