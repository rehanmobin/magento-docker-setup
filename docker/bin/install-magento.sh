#!/usr/bin/env bash

bin/magento setup:install \
--base-url=${APP_URL} \
--db-host=mysql \
--db-name=${MYSQL_DATABASE} \
--db-user=${MYSQL_USER} \
--db-password=${MYSQL_ROOT_PASSWORD} \
--admin-firstname=Foo \
--admin-lastname=bar \
--admin-email=${ADMIN_EMAIL} \
--admin-user=${ADMIN_USERNAME} \
--admin-password=${ADMIN_PASSWORD} \
--language=en_US \
--currency=USD \
--timezone=America/Chicago \
--use-rewrites=1 \
--backend-frontname=${ADMIN_URI_PATH} \
--cache-backend=redis \
--cache-backend-redis-server=redis \
--cache-backend-redis-db=0 \
--cache-backend-redis-port=6379 \
--page-cache=redis \
--page-cache-redis-server=redis \
--page-cache-redis-db=2 \
--page-cache-redis-port=6379 \
--search-engine=${ELASTICSEARCH_ENGINE} \
--elasticsearch-host=${ELASTICSEARCH_HOST} \
--elasticsearch-port=${ELASTICSEARCH_PORT}