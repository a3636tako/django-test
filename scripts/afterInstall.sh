#!/bin/bash

curl -kL https://bootstrap.pypa.io/get-pip.py | python
/usr/local/bin/pip install ansible
/usr/local/bin/ansible-playbook -h local ansible/ec2-run.yml


