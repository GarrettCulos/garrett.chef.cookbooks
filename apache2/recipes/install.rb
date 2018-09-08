package "apache2" do
    action :install
end

service "apache2" do
    action [:enable, :start]
end

# enabme these mods
include_recipe "apache2::proxy"
include_recipe "apache2::proxy_http"
include_recipe "apache2::proxy_ajp"
include_recipe "apache2::rewrite"
include_recipe "apache2::deflate"
include_recipe "apache2::headers"
include_recipe "apache2::proxy_connect"
include_recipe "apache2::proxy_html"

node["apache2"]["sites"].each do |sitename, data|
    document_root = "/var/www/#{sitename}"
  
    directory document_root do
      mode "0755"
      recursive true
    end

    template "/etc/apache2/sites-available/#{sitename}.conf" do
        source "virtualhosts.erb"
        mode "0644"
        variables(
            :document_root => document_root,
            :port => data["port"],
            :proxy_port => data["proxy_port"]
            :servername => data["servername"]
        )
    end

  end