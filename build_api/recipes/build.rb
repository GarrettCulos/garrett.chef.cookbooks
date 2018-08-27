execute 'npm_build' do
    cwd "#{node['project']['path']}"
    command 'npm run build'
end
