#!/usr/bin/env sh

DIR="$(dirname $0)"

# MySQL Database provisioning
##
# DOCKER_DB_ID=$(docker ps | grep docker_db | awk '{print $1}')
# DB_IP=$(docker inspect --format '{{ .NetworkSettings.Networks.docker_default.IPAddress }}' $DOCKER_DB_ID)
# apt-get install pv
# pv dump.sql | mysql -h$DB_IP -unikola -pnikola123 mydb

$DIR/bin/fix_permissions.sh
$DIR/bin/composer_install.sh
$DIR/bin/doctrine_migrations.sh
$DIR/bin/grunt_build.sh
$DIR/bin/bower_install.sh
