#!/bin/bash
ansible-playbook -i rax_inventory.py --private-key=~/.ssh/rax_rsa acme/create-chef-server.yaml
ansible-playbook -i rax_inventory.py --private-key=~/.ssh/rax_rsa acme/install-chef-server.yaml
ansible-playbook -i rax_inventory.py --private-key=~/.ssh/rax_rsa acme/create-servers.yaml
ansible-playbook -i rax_inventory.py --private-key=~/.ssh/rax_rsa acme/prepare-servers.yaml
ansible-playbook -i rax_inventory.py --private-key=~/.ssh/rax_rsa acme/chef-run.yaml
ansible-playbook -i rax_inventory.py --private-key=~/.ssh/rax_rsa acme/finalize-servers.yaml
