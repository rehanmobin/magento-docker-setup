ARG PHP_VERSION

FROM php:${PHP_VERSION}-apache

WORKDIR /var/www/html

COPY ./Makefile .
COPY ./docker/bin /docker/bin
COPY ./docker/php/php.ini $PHP_INI_DIR/conf.d/php.ini
COPY . .
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN apt-get update && apt-get install -y vim zip openssl

ARG SERVER_NAME

RUN a2enmod ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/apache-selfsigned.key \
    -out /etc/ssl/certs/apache-selfsigned.crt \
    -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=$SERVER_NAME"

RUN curl -L -o /usr/local/bin/mhsendmail https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64 \
    && chmod +x /usr/local/bin/mhsendmail

RUN install-php-extensions gd mysqli pdo_mysql zip intl soap sockets bcmath xsl

COPY ./docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf
RUN sed -i "s/TBD/$SERVER_NAME/" /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite && a2ensite 000-default.conf

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user
RUN groupadd -g 1000 app \
    && useradd -g 1000 -u 1000 -d /var/www -s /bin/bash app

RUN chown -R app:app /var/www

RUN chown -R app:app /etc/ssl/private
RUN chmod 700 /etc/ssl/private    

USER app:app
