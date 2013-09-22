#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 path_to_private_key"
    exit 1
fi
ansible-playbook -i rax_inventory.py --private-key="$1" acme/delete-all.yaml
