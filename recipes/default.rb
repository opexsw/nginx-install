#
# Cookbook Name:: nginx-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


node.default['nginx']['version']      = node['nginx-install']['version']
node.default['nginx']['package_name'] = node['nginx-install']['package_name']
node.default['nginx']['port']         = node['nginx-install']['port']


case node['platform_family']
  when 'debian'
   apt_update 'apt update' do
      action :nothing
    end.run_action(:update)
end

include_recipe 'nginx::default'	