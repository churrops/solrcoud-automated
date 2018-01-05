#!/bin/bash

ENV=$1
PRIVATE_SSH_KEY=$2
ANSIBLE_HOST_KEY_CHECKING=False

if [[ -z "$ENV" || -z "$PRIVATE_SSH_KEY" ]]; then
	echo "Please enter the parameter for the environment:"
	echo ""
	echo "$0 <env> <path/private/ssh/key>"
	echo ""
	echo "Exemples:"	
	echo ""
	echo "	AWS	 	= $0 prd ~/.ssh/id_rsa"
	echo ""
	exit 1
fi

ansible-playbook -i ansible/inventories/aws/${ENV}/hosts --private-key=${PRIVATE_SSH_KEY} site.yml
