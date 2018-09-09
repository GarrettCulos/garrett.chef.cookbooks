
#
# Cookbook Name:: apache2
# Attributes:: apache
#
# Copyright 2008-2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["apache2"]["sites"]["default"] = { "port" => 8080, "servername" => "example.com", "proxy_port" => 4200 }

# Where the various parts of apache are
default[:apache][:dir]     = "/etc/httpd"
default[:apache][:log_dir] = "/var/log/httpd"
default[:apache][:user]    = "apache"
default[:apache][:binary]  = "/usr/sbin/httpd"
default[:apache][:icondir] = "/var/www/icons/"
default[:apache][:cache_dir] = "/var/cache/httpd"

# General settings
default[:apache2][:listen_ports] = [ "80","443" ]
default[:apache2][:contact] = "ops@mtgnorth.com"
default[:apache2][:timeout] = 300
default[:apache2][:keepalive] = "On"
default[:apache2][:keepaliverequests] = 100
default[:apache2][:keepalivetimeout] = 5

# Security
default[:apache2][:servertokens] = "Prod"
default[:apache2][:serversignature] = "On"
default[:apache2][:traceenable] = "On"

# mod_auth_openids
default[:apache2][:allowed_openids] = []

# Prefork Attributes
default[:apache2][:prefork][:startservers] = 16
default[:apache2][:prefork][:minspareservers] = 16
default[:apache2][:prefork][:maxspareservers] = 32
default[:apache2][:prefork][:serverlimit] = 400
default[:apache2][:prefork][:maxclients] = 400
default[:apache2][:prefork][:maxrequestsperchild] = 10000

# Worker Attributes
default[:apache2][:worker][:startservers] = 4
default[:apache2][:worker][:maxclients] = 1024
default[:apache2][:worker][:minsparethreads] = 64
default[:apache2][:worker][:maxsparethreads] = 192
default[:apache2][:worker][:threadsperchild] = 64
default[:apache2][:worker][:maxrequestsperchild] = 0

default[:apache2][:modules] = []