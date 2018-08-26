execute 'apt-get update' do
    user 'root'
    command 'apt-get update'
    action :nothing
end

execute 'apt-get udpate' do
    user 'root'
    command 'apt-get install build-essential libssl-dev nodejs npm'
    action :nothing
end
