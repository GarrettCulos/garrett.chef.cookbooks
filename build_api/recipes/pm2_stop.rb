execute 'pm2_stop' do
    cwd "#{node['project']['path']}"
    command 'pm2 stop pm2.json'
end
