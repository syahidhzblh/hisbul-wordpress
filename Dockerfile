FROM php:8.1-fpm-alpine

#Set Working Directory
WORKDIR /var/www

#Update PHP Extension
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

#Copy App to Root Directory
COPY . /var/www

COPY --chown=www:www . /var/www

EXPOSE 9000

CMD [ "php-fpm" ]

LABEL author="Syahid Hizbullah"