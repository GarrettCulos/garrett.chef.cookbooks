execute 'pm2_start-restart' do
    user 'root'
    cwd "#{node['project']['path']}"
    command 'pm2 restart pm2.json'
    action :nothing
end
