FROM alpine:3.4

MAINTAINER Nikola Petkanski <nikola@petkanski.com>

RUN apk add --update nginx

ADD nginx.conf /etc/nginx/
ADD symfony.conf /etc/nginx/conf.d/

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf
RUN adduser -u 1000 -D -g '' -G www-data www-data

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*

CMD ["nginx"]

EXPOSE 80
EXPOSE 443