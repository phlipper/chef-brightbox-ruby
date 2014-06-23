require_relative "test_helper"

describe_recipe "brightbox-ruby::default" do
  let(:apt_source_list) do
    "/etc/apt/sources.list.d/brightbox-ruby-ng.list"
  end

  it "set up an apt repository for `brightbox-ruby-ng`" do
    file(apt_source_list).must_exist
    file(apt_source_list).must_include "brightbox/ruby-ng/ubuntu"
    file(apt_source_list).must_include "main"
  end

  it "installed the system ruby package" do
    package("ruby#{node["brightbox-ruby"]["ruby_version"]}").must_be_installed

    assert_sh "ruby -v"
    assert_sh "gem -v"
  end

  it "installed specified gem packages" do
    node["brightbox-ruby"]["gem_packages"].each do |gem_pkg|
      assert_sh "gem list | grep #{gem_pkg}"
    end
  end
end
