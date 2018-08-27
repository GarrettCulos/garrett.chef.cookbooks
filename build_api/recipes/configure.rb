execute 'cp_env' do
    command "cp #{node['project']['path']}/.env.example #{node['project']['path']}/.env"
end

execute 'cp_pm2' do
    command "cp #{node['project']['path']}/.pm2.default.json #{node['project']['path']}/.pm2.json"
end