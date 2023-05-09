#!/usr/bin/env bash

bin/magento setup:install \
--base-url=${APP_SECURE_URL} \
--db-host=localhost \
--db-name=${MYSQL_DATABASE} \
--db-user=${MYSQL_USER} \
--db-password=${MYSQL_ROOT_PASSWORD} \
--admin-firstname=Foo \
--admin-lastname=bar \
--admin-email=${AMDIN_EMAIL} \
--admin-user=${ADMIN_USERNAME} \
--admin-password=${ADMIN_PASSWORD} \
--language=en_US \
--currency=USD \
--timezone=America/Chicago \
--use-rewrites=1 \
--backend-frontname=${ADMIN_URI_PATH} \
--cache-backend=redis \
--cache-backend-redis-server="127.0.0.1" \
--cache-backend-redis-db=0 \
--cache-backend-redis-port=6379 \
--page-cache=redis \
--page-cache-redis-server="127.0.0.1" \
--page-cache-redis-db=2 \
--page-cache-redis-port=6379