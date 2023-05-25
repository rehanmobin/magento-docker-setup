FROM php:8.1-apache

#USER root
WORKDIR /var/www/html

COPY ./Makefile .
COPY ./docker/bin /docker/bin
COPY ./docker/php/php.ini $PHP_INI_DIR/conf.d/php.ini
COPY . .
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN apt-get update && apt-get install -y vim
RUN curl -L -o /usr/local/bin/mhsendmail https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 \
    && chmod +x /usr/local/bin/mhsendmail

ARG SERVER_NAME

RUN install-php-extensions gd mysqli pdo_mysql zip intl soap sockets bcmath xsl

COPY ./docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf
RUN sed -i "s/TBD/$SERVER_NAME/" /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite && a2ensite "*.conf"

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user
RUN groupadd -g 1000 app \
    && useradd -g 1000 -u 1000 -d /var/www -s /bin/bash app

RUN mkdir -p /var/www/html \
    && chown -R app:app /var/www

USER app:app
