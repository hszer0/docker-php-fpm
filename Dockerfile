FROM php:7.3-fpm

RUN apt-get update && apt-get install -y $PHPIZE_DEPS \
    && docker-php-ext-install mysqli http \
    && docker-php-ext-enable mysqli http
