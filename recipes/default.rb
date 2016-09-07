#
# Cookbook Name:: asp_core
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'iis::default'

service 'W3SVC' do
  action :nothing
end

package 'Microsoft ASP.NET Core Module' do
  provider Chef::Provider::Package::Windows
  source node['asp_net_core']['installer_url']
  checksum node['asp_net_core']['checksum']
  name 'Microsoft ASP.NET Core Module'
  installer_type :custom
  options '/quiet OPT_INSTALL_REDIST=0'
  notifies :restart, 'service[W3SVC]', :immediately
end
