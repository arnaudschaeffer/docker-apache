#!/bin/bash
# Apache VirtualHost Template with variable replacement

serverName=${SERVER_NAME:-symfony.local}
serverAlias=${SERVER_ALIAS:-www.symfony.local}
containerName=${CONTAINER_NAME:-symfony_php}

set -x

sed -i -e "s/{SERVER_NAME}/$serverName/g" -e "s/{SERVER_ALIAS}/$serverAlias/g" -e "s/{CONTAINER_NAME}/$containerName/g" /etc/apache2/sites-enabled/symfony.conf