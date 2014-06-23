require "spec_helper"

describe "brightbox-ruby-ng `apt` setup" do
  let(:apt_src) do
    "/etc/apt/sources.list.d/brightbox-ruby-ng.list"
  end

  it "set up the primay apt repository" do
    expect(file apt_src).to be_file
    expect(file apt_src).to contain("brightbox/ruby-ng/ubuntu")
    expect(file apt_src).to contain("main")
  end
end

describe "brightbox-ruby-ng system package installation" do
  it "installed the `ruby2.1` package" do
    expect(package "ruby2.1").to be_installed
    expect(command "ruby -v").to return_stdout(/ruby \d\.\d\.\dp\d+/)
    expect(command "gem -v").to return_stdout(/\d\.\d\.\d/)
  end
end

describe "brightbox-ruby-ng gem package installation" do
  it "installed the `bundler` gem" do
    expect(command "bundle -v").to return_stdout(/Bundler version \d\.\d\.\d/)
  end
end
