# chef-brightbox-ruby  [![Build Status](http://img.shields.io/travis-ci/phlipper/chef-brightbox-ruby.png)](https://travis-ci.org/phlipper/chef-brightbox-ruby)

## Description

Installs [Ruby](https://www.ruby-lang.org) from the [Brightbox Ruby NG](https://launchpad.net/~brightbox/+archive/ruby-ng) PPA repository.


## Requirements

### Supported Platforms

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Ubuntu 12.04+

### Cookbooks

* [apt](http://community.opscode.com/cookbooks/apt)
* [minitest-handler](http://community.opscode.com/cookbooks/minitest-handler) _(suggested, not required)_


## Recipes

* `brightbox-ruby` - Set up the apt repository and install dependent packages

## Usage

This cookbook installs the ruby components if not present, and pulls updates if they are installed on the system.


## Attributes

```ruby
default["brightbox-ruby"]["ruby_version"] = "2.1"  # may be 1.8, 1.9.1, 2.0, 2.1
default["brightbox-ruby"]["package_action"] = "install"  # or "upgrade"
default["brightbox-ruby"]["gem_packages"] = []  # list of system gems to install
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

**chef-brightbox-ruby**

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/2014/license.html).
* Copyright (c) 2014 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)  [![Gittip](http://img.shields.io/gittip/phlipper.png)](https://www.gittip.com/phlipper/)
* http://phlippers.net/
