FROM php:7.3-fpm-alpine

RUN apk update && apk add --no-cache $PHPIZE_DEPS
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
RUN chown -R www-data:www-data /var/www
