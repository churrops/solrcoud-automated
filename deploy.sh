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
#	echo "	Staging 	= $0 stg ~/.ssh/id_rsa"
#	echo "	Production 	= $0 prd ~/.ssh/id_rsa"
	echo "	AWS	 	= $0 aws ~/.ssh/id_rsa"
	echo ""
	exit 1
fi

ansible-playbook -i ansible/inventories/${ENV}/hosts --private-key=${PRIVATE_SSH_KEY} site.yml
