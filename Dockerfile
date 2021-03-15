#DOCKERFILE fpm
FROM php:7.4-fpm

RUN apk update && apk add --no-cache $PHPIZE_DEPS
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev libzip-dev bash bind-tools
RUN docker-php-ext-install mysqli gd zip
RUN docker-php-ext-enable mysqli
RUN chown -R www-data:www-data /var/www
