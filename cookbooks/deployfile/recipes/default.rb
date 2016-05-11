#
# Cookbook Name:: deployfile
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'aws'

aws_s3_file "/home/ubuntu/downloadfile/sampleapp.war" do
  bucket "spbucket123"
  remote_path "sampleapp.war"
  aws_access_key_id node[:custom_access_key]
  aws_secret_access_key node[:custom_secret_key]
end