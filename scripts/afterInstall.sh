#!/bin/bash

curl -kL https://bootstrap.pypa.io/get-pip.py | sudo python
sudo /usr/local/bin/pip install ansible
/usr/local/bin/ansible-playbook -i /tmp/mybook/ansible/hosts -c local /tmp/mybook/ansible/ec2-run.yml


