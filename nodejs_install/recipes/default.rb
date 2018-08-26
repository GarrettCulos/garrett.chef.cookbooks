#
# Cookbook:: nodejs_install
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe "nodejs_install::package"
include_recipe "nodejs_install::install_nvm"
include_recipe "nodejs_install::install_pm2"
