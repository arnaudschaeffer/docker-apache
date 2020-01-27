#!/bin/bash

. /update_user.sh

. /apache-template.sh

apachectl  -DFOREGROUND -e info