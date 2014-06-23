require "spec_helper"

describe "brightbox-ruby::default" do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set["brightbox-ruby"]["gem_packages"] = %w[bundler foo-test]
    end.converge(described_recipe)
  end

  it "sets up an apt repository" do
    expect(chef_run).to add_apt_repository "brightbox-ruby-ng"
  end

  describe "package installation" do
    it "installs the specified system packages" do
      expect(chef_run).to install_package "ruby2.1"
      expect(chef_run).to_not upgrade_package "ruby2.1"
    end

    describe "when `package_action` is `upgrade`" do
      let(:chef_run) do
        ChefSpec::Runner.new do |node|
          node.set["brightbox-ruby"]["package_action"] = "upgrade"
        end.converge(described_recipe)
      end

      it "upgrades the specified system packages" do
        expect(chef_run).to_not install_package "ruby2.1"
        expect(chef_run).to upgrade_package "ruby2.1"
      end
    end
  end

  it "installs the specified gem packages" do
    expect(chef_run).to install_gem_package "bundler"
    expect(chef_run).to install_gem_package "foo-test"
  end
end
