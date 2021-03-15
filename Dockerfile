#DOCKERFILE fpm
FROM php:7.4-fpm

RUN apt-get update && apt-get install -y freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev libzip-dev
RUN docker-php-ext-install mysqli gd zip
RUN docker-php-ext-enable mysqli
RUN chown -R www-data:www-data /var/www
