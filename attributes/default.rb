#
# Cookbook Name:: brightbox-ruby
# Attributes:: default
#

default["brightbox-ruby"]["ruby_version"] = "2.1"  # may be 1.8, 1.9.1, 2.0, 2.1
default["brightbox-ruby"]["package_action"] = "install"  # or "upgrade"
default["brightbox-ruby"]["gem_packages"] = []  # list of system gems to install
