#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 path_to_private_key"
    exit 1
fi
ansible-playbook -i rax_inventory.py --private-key="$1" acme/create-chef-server.yaml
if [ $? -ne 0 ]; then
    exit 1
fi
ansible-playbook -i rax_inventory.py --private-key="$1" acme/install-chef-server.yaml
if [ $? -ne 0 ]; then
    exit 1
fi
ansible-playbook -i rax_inventory.py --private-key="$1" acme/create-servers.yaml
if [ $? -ne 0 ]; then
    exit 1
fi
ansible-playbook -i rax_inventory.py --private-key="$1" acme/prepare-servers.yaml
if [ $? -ne 0 ]; then
    exit 1
fi
ansible-playbook -i rax_inventory.py --private-key="$1" acme/chef-run.yaml
if [ $? -ne 0 ]; then
    exit 1
fi
ansible-playbook -i rax_inventory.py --private-key="$1" acme/finalize-servers.yaml
