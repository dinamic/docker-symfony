#!/usr/bin/env sh

DOCKER_PHP_ID=$(docker ps | grep docker_php | awk '{print $1}')
docker exec -it $DOCKER_PHP_ID sh -c "apk add curl git openssh-client"
docker exec -it $DOCKER_PHP_ID sh -c "curl -sS https://getcomposer.org/installer | php"
docker exec -it $DOCKER_PHP_ID "mv composer.phar /usr/local/bin/composer"
docker exec -it $DOCKER_PHP_ID su www-data -c "composer install"
