#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

package 'httpd' do
	action :install
end

service 'httpd' do
	action [:start, :enable]
end

git "/var/www/html" do
	repository "git://github.com/Harishpalwaii/sample.git"
	reference "master"
	action :checkout
end

