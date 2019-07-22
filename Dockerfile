FROM php:7.3-fpm

RUN apt-get update && apt-get install -y $PHPIZE_DEPS \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli
