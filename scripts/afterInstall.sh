#!/bin/bash

curl -kL https://bootstrap.pypa.io/get-pip.py | python
pip install ansible
ansible-playbook -h local ansible/ec2-run.yml


