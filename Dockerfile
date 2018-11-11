FROM php:7.2-apache

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev git zip --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql

RUN sed -ri -e 's!/var/www/html!/var/www/public!g' /etc/apache2/sites-available/000-default.conf
RUN sed -ri -e 's!/var/www/!/var/www/public!g' /etc/apache2/conf-available/*.conf

RUN printf ' \n\
 <Directory /var/www/public>\n\
        Options FollowSymLinks\n\
        AllowOverride All\n\
        Order allow,deny\n\
        Allow from all\n\
    </Directory>\n\
    ' >> /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite

RUN curl --silent --show-error https://getcomposer.org/installer | php
