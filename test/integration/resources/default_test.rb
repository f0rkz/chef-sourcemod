describe user('steam') do
  its('home') { should eq '/home/steam' }
  its('shell') { should eq '/bin/bash' }
end

describe directory('/opt/sourcemod') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe directory('/opt/sourcemod/addons') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe directory('/opt/sourcemod/addons/sourcemod') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe directory('/opt/sourcemod/addons/metamod') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe directory('/opt/sourcemod/cfg/sourcemod') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe directory('/opt/sourcemod/addons/metamod') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end

describe file('/opt/sourcemod/addons/metamod.vdf') do
  it { should exist }
  it { should be_file }
  it { should be_owned_by 'steam' }
  its('group') { should eq 'steam' }
end
