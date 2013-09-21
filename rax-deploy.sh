#!/bin/bash
ansible-playbook -i rax_inventory.py --private-key="$1" acme/create-chef-server.yaml
ansible-playbook -i rax_inventory.py --private-key="$1" acme/install-chef-server.yaml
ansible-playbook -i rax_inventory.py --private-key="$1" acme/create-servers.yaml
ansible-playbook -i rax_inventory.py --private-key="$1" acme/prepare-servers.yaml
ansible-playbook -i rax_inventory.py --private-key="$1" acme/chef-run.yaml
ansible-playbook -i rax_inventory.py --private-key="$1" acme/finalize-servers.yaml
