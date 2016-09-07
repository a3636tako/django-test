#!/bin/bash

if [ "$DEPLOYMENT_GROUP_NAME" = "Production" ]
then
  APP_NAME=mybook-prod
else
  APP_NAME=mybook
fi

/opt/virtualenv/${APP_NAME}/bin/python /var/www/django/${APP_NAME}/manage.py migrate

. /opt/virtualenv/uwsgi/bin/activate

mkdir -p /var/log/uwsgi
chmod 0777 /var/log/uwsgi

uwsgi --ini /var/www/django/${APP_NAME}/${APP_NAME}_uwsgi.ini

service nginx restart


