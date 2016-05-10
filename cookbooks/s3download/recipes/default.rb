#
# Cookbook Name:: s3download
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

script "content_download" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    sudo aws s3 cp s3://spbucket123/OpsWorks/sampleapp.war /home/ubuntu/new/sampleapp.war
  EOH
end
