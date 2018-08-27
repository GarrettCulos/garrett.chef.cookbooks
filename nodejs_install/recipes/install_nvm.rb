bash 'install_nvm' do
    cwd '/tmp'
    code <<-EOH
    curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh
    EOH
end

execute 'install_nvm.sh' do
    command './install_nvm.sh'
end

execute 'nvm_install' do
    command 'nvm install 9.11.0'
end

execute 'nvm_alias' do
    command 'nvm alias default 9.11.0'
end
