execute 'yum update' do
    user 'root'
    command 'yum update'
    action :nothing
end

execute 'yum install' do
    user 'root'
    command 'yum install git'
    action :nothing
end

bash 'install_npm' do
    cwd '/tmp'
    code <<-EOH
    curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
    sudo yum -y install nodejs
    EOH
end


