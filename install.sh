#!/usr/bin/env bash

echo "Installing latest Magento2 OpenSource..."

COMPOSER_MEMORY_LIMIT=-1 composer selfupdate --1

COMPOSER_MEMORY_LIMIT=-1 composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=${MAGENTO_VERSION} src

echo "Installing CI/CD packages..."
cd src
#composer require phoenix-media/magento2-cloud-build --no-update
#composer update
#vendor/bin/px-cloud-build-install
cd ..
