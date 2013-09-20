chef_server_url "https://{{ hostvars[groups['zwift.chef-server'][0]]['ansible_' ~ chef_server_interface]['ipv4']['address'] }}:443"
chef_environment "{{ chef_client.env }}"
node_name "{{ hostvars[inventory_hostname]['ansible_' ~ chef_client_interface]['ipv4']['address'] }}"
