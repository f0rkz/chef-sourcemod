#
# Cookbook:: test
# Recipe:: default
#
# Copyright:: 2017, f0rkznet.net

user 'steam' do
  comment 'Steam deployment user'
  system true
  home '/home/steam'
  shell '/bin/bash'
end

directory '/opt/sourcemod' do
  owner 'steam'
  group 'steam'
  mode '0755'
  recursive true
  action :create
end

sourcemod 'install sourcemod' do
  user 'steam'
  group 'steam'
  install_game_dir '/opt/sourcemod'
  action :install
end
