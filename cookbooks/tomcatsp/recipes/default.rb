#
# Cookbook Name:: tomcatsp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'extract_module' do
 # cwd ::File.dirname(src_filepath)
#  cwd /root/chef-repo/
  code <<-EOH
  sudo apt-get install tomcat7
  sudo /etc/init.d/tomcat7 start
  EOH
#  not_if { ::File.exists?(extract_path) }
end
