#!/bin/bash
ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook -i hosts --private-key=rodrigofloriano-keyus.pem site.yml 
