.PHONY: pre-deploy download-magento

COMPOSER_INSTALL_ARGS ?= --no-dev --no-scripts
COMPOSER_DUMP_AUTOLOAD_ARGS ?= --optimize

pre-deploy:
	cd ./magento && composer install $(COMPOSER_INSTALL_ARGS)
	cd ./magento && composer dump-autoload $(COMPOSER_DUMP_AUTOLOAD_ARGS)

download-magento:
	docker compose exec app bash -c "rm tmp.file && composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition:2.4.5-p1 . --no-install"

install-composer-deps:
	docker compose exec app bash -c "composer install $(COMPOSER_INSTALL_ARGS)"

build:
	docker-compose up --build

install-magento:
	docker compose exec app bash -c "/bin/bash /docker/bin/install-magento.sh"

setup-magento: download-magento install-composer-deps install-magento