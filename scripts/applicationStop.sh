#!/bin/bash

kill -QUIT `cat /var/www/django/mybook/mybook.pid`
rm -rf /var/www/django/mybook

