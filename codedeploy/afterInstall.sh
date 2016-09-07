#!/bin/bash

curl -kL https://bootstrap.pypa.io/get-pip.py | sudo python
sudo /usr/local/bin/pip install ansible

if [ "$DEPLOYMENT_GROUP_NAME" = "Production" ]
then
  /usr/local/bin/ansible-playbook -i /tmp/mybook/ansible/hosts -c local /tmp/mybook/ansible/production-run.yml
else
  /usr/local/bin/ansible-playbook -i /tmp/mybook/ansible/hosts -c local /tmp/mybook/ansible/develop-run.yml
fi





