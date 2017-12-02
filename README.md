# chef-sourcemod Cookbook

LWRP resource for installing Metamod and Sourcemod into a gameserver directory.

# Usage

Include `depends 'chef-sourcemod` in your metadata.rb

# Resources

## steamcmd

Sourcemod/Metamod LWRP to install the mods into a gameserver directory.

### Actions
:install: (default) Installs Sourcemod/Metamod to specific directory

### Properties
* `name`: Name of the resource
* `sourcemod_url`: URL for the sourcemod build tar for install
* `metamod_url`: URL for the metamod build tar for install
* `user`: User to install Sourcemod/Metamod (Default: `root`)
* `group`: Group to install Sourcemod/Metamod (Default: `root`)
* `install_game_dir`: Install directory for the extracted `addons` folder.
This must be your gameserver's actual game directory. Example: `/opt/csgo/740/csgo`

### Example Usage

```ruby
sourcemod 'install sourcemod' do
  user 'steam'
  group 'steam'
  install_game_dir '/opt/csgo/740/csgo'
end
```

# LICENSE AND AUTHOR

Author:: Nick Gray (f0rkz@f0rkznet.net)

Copyright 2017, f0rkznet.net

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
