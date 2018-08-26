execute 'pm2_stop' do
    user 'root'
    cwd "#{node['project']['path']}"
    command 'pm2 stop pm2.json'
    action :nothing
end
