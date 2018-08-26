#
# Cookbook:: build_api
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# directory '/var/www/' do
#     only_if { ::File.exist?('/var/www/') }
#     owner 'root'
#     mode '0755'
#     action :create
# end

# git '/var/www/garrett.backend' do
#     repository 'git@github.com:GarrettCulos/garrett.backend.git'
#     revision 'master'
#     action :sync
# end


include_recipe "build_api::install"
include_recipe "build_api::configure"
include_recipe "build_api::build"
include_recipe "build_api::pm2_start"