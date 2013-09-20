Ohai::Config[:disabled_plugins] = ["passwd"]

chef_server_url "https://{{ hostvars[groups['zwift.chef-server'][0]]['ansible_' ~ chef_server_interface]['ipv4']['address'] }}:443"
chef_environment "{{ chef_client.env }}"

