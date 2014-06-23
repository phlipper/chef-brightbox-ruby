#
# Cookbook Name:: brightbox-ruby
# Recipe:: default
#

include_recipe "apt"

apt_repository "brightbox-ruby-ng" do
  uri "http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  keyserver "hkp://keyserver.ubuntu.com:80"
  key "C3173AA6"
end

package "ruby#{node["brightbox-ruby"]["ruby_version"]}" do
  action node["brightbox-ruby"]["package_action"].to_sym
end

node["brightbox-ruby"]["gem_packages"].each do |gem_pkg|
  gem_package gem_pkg
end
