package "httpd" do
    action :install
end

service "httpd" do
    action [:enable, :start]
end

# enabme these mods
include_recipe "apache2::mod_proxy"
include_recipe "apache2::mod_proxy_http"
include_recipe "apache2::mod_proxy_ajp"
include_recipe "apache2::mod_rewrite"
include_recipe "apache2::mod_deflate"
include_recipe "apache2::mod_headers"
include_recipe "apache2::mod_proxy_connect"
include_recipe "apache2::mod_proxy_html"

node["apache2"]["sites"].each do |sitename, data|
    document_root = "/var/www/#{sitename}"
  
    directory document_root do
      mode "0755"
      recursive true
    end

    template "/etc/httpd/sites-available/#{sitename}.conf" do
        source "virtualhosts.erb"
        mode "0644"
        variables(
            :document_root => document_root,
            :port => data["port"],
            :proxy_port => data["proxy_port"],
            :servername => data["servername"]
        )
    end

    execute 'link' do
        cwd "/etc/httpd/sites-enabled"
        command "ln -s ../sites-available/#{sitename}.conf"
    end
    

  end