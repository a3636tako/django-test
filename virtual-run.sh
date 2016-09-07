#!/bin/bash

APP_NAME=mybook

vagrant ssh -c "sudo kill -QUIT `cat ${APP_NAME}/mybook.pid` ; sudo sh /vagrant/codedeploy/applicationStart.sh"
