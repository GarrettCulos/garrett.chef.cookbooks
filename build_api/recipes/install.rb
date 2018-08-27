def directory_exists?(directory)
    File.directory?(directory)
end

if !directory_exists?("#{node['project']['path']}/.git")
    bash 'git_clone' do
        code <<-EOH
        mkdir #{node['project']['path']}
        cd #{node['project']['path']}
        git clone #{node['project']['path']} .
        EOH
    end
end

execute 'git_pull' do 
    cwd "#{node['project']['path']}"
    command 'git pull origin master'
end

execute 'npm_install' do
    cwd "#{node['project']['path']}"
    command 'npm install'
end
