name             "brightbox-ruby"
maintainer       "Phil Cohen"
maintainer_email "github@phlippers.net"
license          "MIT"
description      "Installs Ruby from the Brightbox Ruby NG PPA repository."
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.0"

recipe "brightbox-ruby", "Set up the apt repository and install dependent packages"

supports "ubuntu"

depends "apt"

suggests "minitest-handler"
