#!/bin/bash

if [ "$DEPLOYMENT_GROUP_NAME" = "Production" ]
then
  export DJANGO_RUN_MACHINE=production
  APP_NAME=mybook-prod
else
  export DJANGO_RUN_MACHINE=develop
  APP_NAME=mybook
fi

/opt/virtualenv/${APP_NAME}/bin/python /var/www/django/${APP_NAME}/manage.py migrate

. /opt/virtualenv/uwsgi/bin/activate

mkdir -p /var/log/uwsgi
chmod 0777 /var/log/uwsgi

mkdir -p /var/log/django
chmod 0777 /var/log/django

uwsgi --ini /var/www/django/${APP_NAME}/${APP_NAME}_uwsgi.ini

service nginx restart


