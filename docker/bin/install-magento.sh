#!/usr/bin/env bash

bin/magento setup:install \
--base-url=${APP_URL} \
--db-host=${MYSQL_HOST} \
--db-name=${MYSQL_DATABASE} \
--db-user=${MYSQL_USER} \
--db-password=${MYSQL_ROOT_PASSWORD} \
--admin-firstname=${ADMIN_USER_FIRSTNAME} \
--admin-lastname=${ADMIN_USER_LASTNAME} \
--admin-email=${ADMIN_EMAIL} \
--admin-user=${ADMIN_USERNAME} \
--admin-password=${ADMIN_PASSWORD} \
--language=${LANGUAGE} \
--currency=${CURRENCY} \
--timezone=${TIME_ZONE} \
--use-rewrites=1 \
--backend-frontname=${ADMIN_URI_PATH} \
--cache-backend=redis \
--cache-backend-redis-server=${REDIS_HOST} \
--cache-backend-redis-db=0 \
--cache-backend-redis-port=${REDIS_SERVER_PORT} \
--page-cache=redis \
--page-cache-redis-server=${REDIS_HOST} \
--page-cache-redis-db=2 \
--page-cache-redis-port=${REDIS_SERVER_PORT} \
--search-engine=${ELASTICSEARCH_ENGINE} \
--elasticsearch-host=${ELASTICSEARCH_HOST} \
--elasticsearch-port=${ELASTICSEARCH_PORT}