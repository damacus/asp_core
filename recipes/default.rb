#
# Cookbook Name:: asp_core
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'iis::default'

service 'W3SVC' do
  action :nothing
end

windows_package 'Microsoft ASP.NET Core Module' do
  source 'http://download.microsoft.com/download/A/3/8/A38489F3-9777-41DD-83F8-2CBDFAB2520C/DotNetCore.1.0.0-WindowsHosting.exe'
  checksum '3bc116bc4d5f6be554264a7d2998b31999c5a22b6e22c313aa1619d591a20133'
  name 'Microsoft ASP.NET Core Module'
  installer_type :msi
  options '/quiet'
  notifies :restart, 'service[W3SVC]', :immediately
end
