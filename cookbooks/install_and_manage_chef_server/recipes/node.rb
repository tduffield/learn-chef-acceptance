#
# Cookbook Name:: install_and_manage_chef_server
# Recipe:: node
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

chef_server = search(:node, 'hostname:chef-server')[0]
hostsfile_entry chef_server['ipaddress'] do
  hostname chef_server['fqdn']
  unique true
end
