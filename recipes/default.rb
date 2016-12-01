#
# Cookbook Name:: asp_core
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'iis::default'

windows_package 'Microsoft ASP.NET Core Module' do
  source node['asp_net_core']['installer_url']
  checksum node['asp_net_core']['checksum'] if node['asp_net_core']['checksum']
  name 'Microsoft ASP.NET Core Module'
  installer_type :custom
  options '/quiet OPT_INSTALL_REDIST=0'
  notifies :run, 'powershell_script[Reset IIS]', :immediately
end

# Force IIS to re-read from the registry
powershell_script 'Reset IIS' do
  code <<-EOH
  net stop was /y
  net start w3svc
  EOH
  action :nothing
end
