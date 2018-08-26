execute 'pm2 install' do
    command 'npm install pm2 -g'
    action :nothing
end