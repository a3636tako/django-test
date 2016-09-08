#!/bin/bash

rm -rf /tmp/mybook

if [ "$DEPLOYMENT_GROUP_NAME" = "Production" ]
then
  APP_NAME=mybook-prod
else
  APP_NAME=mybook
fi

rm -rf /var/www/django/${APP_NAME}
