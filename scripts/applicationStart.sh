#!/bin/bash

/opt/virtualenv/mybook/bin/python /var/www/django/mybook/manage.py migrate

. /opt/virtualenv/uwsgi/bin/activate

mkdir -p /var/log/uwsgi
chmod 0777 /var/log/uwsgi

uwsgi --ini /var/www/django/mybook/mybook_uwsgi.ini

service nginx restart


