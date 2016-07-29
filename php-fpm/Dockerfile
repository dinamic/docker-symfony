FROM alpine:3.4

MAINTAINER Nikola Petkanski <nikola@petkanski.com>

RUN adduser -u 1000 -D -g '' www-data

ENV PHP_EXTRA_CONFIGURE_ARGS --enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk --update add \
        php7 \
        php7-dom \
        php7-ctype \
        php7-curl \
        php7-fpm \
        php7-gd \
        php7-intl \
        php7-json \
        php7-mbstring \
        php7-mcrypt \
        php7-mysqlnd \
        php7-opcache \
        php7-pdo \
        php7-pdo_mysql \
        php7-posix \
        php7-session \
        php7-xml \
        php7-iconv \
        php7-phar \
        php7-openssl \
        php7-opcache \
        php7-zlib

WORKDIR /var/www/symfony

RUN ln -s /usr/bin/php7 /usr/bin/php
ADD symfony.ini /etc/php7/conf.d/50-setting.ini
ADD php-fpm.conf /etc/php7/php-fpm.d/www.conf
ADD start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 9000

CMD ["php-fpm7", "-F"]
# ENTRYPOINT ["/start.sh"]
