#!/bin/bash

APP_NAME=mybook

export DJANGO_RUN_MACHINE=virtual
kill -QUIT `cat /var/www/django/${APP_NAME}/mybook.pid`

/opt/virtualenv/${APP_NAME}/bin/python /var/www/django/${APP_NAME}/manage.py migrate

. /opt/virtualenv/uwsgi/bin/activate

mkdir -p /var/log/uwsgi
chmod 0777 /var/log/uwsgi

uwsgi --ini /var/www/django/${APP_NAME}/${APP_NAME}_uwsgi.ini

service nginx restart