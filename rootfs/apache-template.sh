#!/bin/bash
# Apache VirtualHost Template with variable replacement

serverName=${SERVER_NAME:-symfony.local}
serverAlias=${SERVER_ALIAS:-www.symfony.local}
containerReleaseId=${CONTAINER_RELEASE_ID}
containerName=${CONTAINER_NAME:-symfony_php}

set -x

cp /etc/apache2/sites-enabled/symfony.conf /usr/local/apache2/symfony.conf
sed -i -e "s/{SERVER_NAME}/$serverName/g" -e "s/{SERVER_ALIAS}/$serverAlias/g" -e "s/{CONTAINER_NAME}/$containerReleaseId$containerName/g" /usr/local/apache2/symfony.conf
cp -f /usr/local/apache2/symfony.conf /etc/apache2/sites-enabled/symfony.conf