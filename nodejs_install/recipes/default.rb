#
# Cookbook:: nodejs_install
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe "build_api::package"
include_recipe "build_api::install_nvm"
include_recipe "build_api::install_pm2"
