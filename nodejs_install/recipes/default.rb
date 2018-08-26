#
# Cookbook:: nodejs_install
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_udpate

apt_package '%w(build-essential libssl-dev nodejs npm)'

include_recipe "build_api::install_nvm"
include_recipe "build_api::install_pm2"
