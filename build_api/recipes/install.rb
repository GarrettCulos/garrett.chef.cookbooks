def directory_exists?(directory)
    File.directory?(directory)
end
if !directory_exists?("#{node['project']['path']}/.git")
    directory node['project']['path'] do
        owner 'root'
        group 'root'
        mode '0755'
        action :create
    end

    execute 'git_clone' do 
        cwd "#{node['project']['path']}"
        command "git clone https://#{node['project']['user']}:#{node['project']['password']}@#{node['project']['repo']} ."
    end
end

execute 'git_checkout' do 
    cwd "#{node['project']['path']}"
    command 'git checkout -- .'
end

execute 'git_pull' do 
    cwd "#{node['project']['path']}"
    command 'git pull origin master'
end

execute 'npm_install' do
    cwd "#{node['project']['path']}"
    command 'sudo npm install'
end
