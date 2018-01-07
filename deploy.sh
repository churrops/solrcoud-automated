#!/bin/bash

PROVIDER=$1
ENV=$2
#PRIVATE_SSH_KEY=$2
ANSIBLE_HOST_KEY_CHECKING=False

if [[ -z "$ENV" || -z "$PROVIDER" ]]; then
	echo "Please enter the parameter for the environment:"
	echo ""
	echo "$0 <env> <path/private/ssh/key>"
	echo ""
	echo "Exemples:"	
	echo ""
	echo "	VBOX	 	= $0 vbox prd"
	echo "	AWS	 	= $0 aws prd ~/.ssh/id_rsa"
	echo ""
	exit 1
fi

ansible-playbook -i ansible/inventories/${PROVIDER}/${ENV}/hosts ansible/site.yml
#ansible-playbook -i ansible/inventories/${PROVIDER}/${ENV}/hosts --private-key=${PRIVATE_SSH_KEY} site.yml
