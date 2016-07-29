#!/usr/bin/env sh

# setup composer
su www-data -c 'composer global require "hirak/prestissimo:^0.3"'

# install dependencies
su www-data -c 'cd /var/www/symfony && composer install'

# php-fpm7 -F
