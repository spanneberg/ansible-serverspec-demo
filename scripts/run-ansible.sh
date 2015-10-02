#!/bin/bash

export ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o IdentitiesOnly=yes -o ControlMaster=auto -o ControlPersist=60s' 
ansible-playbook --user=vagrant --connection=ssh --timeout=30 --inventory-file=ansible/inventory --sudo -v ansible/site.yml
