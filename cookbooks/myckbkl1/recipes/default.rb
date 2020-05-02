#
# Cookbook:: myckbkl
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'vim'

if platform?('ubuntu')
    # package 'apache2' # ubuntu /debian
    include_recipe 'myckbkl::install_apache_ubuntu'
    
elsif platform?('redhat')
    # package 'http2' #redhat
    include_recipe myckbkl::install_apache_redhat
end

cookbook_file '/var/www/html/index.html' do
    action :create
    source 'index.html'
end

package 'git' do 
    action :install
    # version '2.20.0'
    ignore_failure true
end
