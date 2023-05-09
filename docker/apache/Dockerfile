FROM php:8.1-apache

USER root
WORKDIR /var/www/html

COPY ./Makefile .
COPY . .
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

ARG SERVER_NAME

RUN install-php-extensions gd xdebug mysqli pdo_mysql zip intl soap sockets bcmath xsl

COPY ./docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf
RUN sed -i "s/TBD/$SERVER_NAME/" /etc/apache2/sites-available/000-default.conf
RUN chown -R www-data:www-data /var/www/html && a2enmod rewrite && a2ensite "*.conf"

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
