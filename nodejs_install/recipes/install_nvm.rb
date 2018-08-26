bash 'install_nvm' do
    user 'root'
    cwd '/tmp'
    code <<-EOH
    curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh
    bash install_nvm.sh
    nvm install 9.11.0
    nvm alias default 9.11.0
    EOH
end