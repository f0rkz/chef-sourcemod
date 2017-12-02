#
# Cookbook:: chef-sourcemod
# Resource:: sourcemod
#
# Author:: Nick Gray (f0rkz@f0rkznet.net)
#
# Copyright:: 2017 f0rkznet.net
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
resource_name :sourcemod
sourcemod_download_url = 'https://sm.alliedmods.net/smdrop/1.8/sourcemod-1.8.0-git6036-linux.tar.gz'
metamod_download_url = 'https://mms.alliedmods.net/mmsdrop/1.10/mmsource-1.10.7-git961-linux.tar.gz'

property :name,                         String, name_property: true
property :sourcemod_url,                String, default: sourcemod_download_url
property :metamod_url,                  String, default: metamod_download_url
property :user,                         String, default: 'root'
property :group,                        String, default: 'root'
property :install_game_dir,             String

action :install do
  sourcemod = new_resource

  tar_extract sourcemod.metamod_url do
    download_dir Chef::Config[:file_cache_path]
    target_dir sourcemod.install_game_dir
    user sourcemod.user
    group sourcemod.group
  end

  tar_extract sourcemod.sourcemod_url do
    download_dir Chef::Config[:file_cache_path]
    target_dir sourcemod.install_game_dir
    user sourcemod.user
    group sourcemod.group
  end
end
