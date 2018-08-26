bash 'pm2_stop' do
    user 'root'
    cwd "#{node['project']['path']}"
    code <<-EOH
    pm2 restart pm2.json
    EOH
end