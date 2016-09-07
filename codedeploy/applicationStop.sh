#!/bin/bash

if [ "$DEPLOYMENT_GROUP_NAME" = "Production" ]
then
  APP_NAME=mybook-prod
else
  APP_NAME=mybook
fi

kill -QUIT `cat /var/www/django/${APP_NAME}/mybook.pid`
rm -rf /var/www/django/${APP_NAME}
rm -rf /tmp/${APP_NAME}


