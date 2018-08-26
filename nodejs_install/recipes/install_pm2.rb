execute 'pm2 install' do
    user 'root'
    command 'npm install pm2 -g'
    action :nothing
end