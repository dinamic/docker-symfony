#!/usr/bin/env sh

DOCKER_PHP_ID=$(docker ps --format '{{ .ID }} {{ .Names }}' | grep php | awk '{print $1}')
docker exec -it $DOCKER_PHP_ID sh -c "[ -e /usr/local/bin/rocketeer ] || apk add wget"
docker exec -it $DOCKER_PHP_ID sh -c "[ -e /usr/local/bin/rocketeer ] || wget http://rocketeer.autopergamene.eu/versions/rocketeer.phar"
docker exec -it $DOCKER_PHP_ID sh -c "[ -e /usr/local/bin/rocketeer ] || chmod +x rocketeer.phar"
docker exec -it $DOCKER_PHP_ID sh -c "[ -e /usr/local/bin/rocketeer ] || mv rocketeer.phar /usr/local/bin/rocketeer"
docker exec -it $DOCKER_PHP_ID su www-data -c "rocketeer $@"
