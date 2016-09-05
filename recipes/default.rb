#
# Cookbook Name:: asp_core
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'https://go.microsoft.com/fwlink/?LinkId=817246'

package '.NET Core Windows Server Hosting bundle' do
  checksum '3bc116bc4d5f6be554264a7d2998b31999c5a22b6e22c313aa1619d591a20133'
  source 'https://go.microsoft.com/fwlink/?LinkId=817246'
  action :install
end
