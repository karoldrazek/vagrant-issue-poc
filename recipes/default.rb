#
# Cookbook Name:: test-vagrant
# Recipe:: default
#

execute "Installing: Desktop" do
  command "yum groupinstall 'Desktop' -y"
  action :run
  not_if "yum grouplist 'Desktop' | grep Installed"
end
