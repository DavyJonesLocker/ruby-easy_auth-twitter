# EasyAuth-Twitter #

[![Build Status](https://secure.travis-ci.org/dockyard/easy_auth-twitter.png?branch=master)](http://travis-ci.org/dockyard/easy_auth-twitter)
[![Dependency Status](https://gemnasium.com/dockyard/easy_auth-twitter.png?travis)](https://gemnasium.com/dockyard/easy_auth-twitter)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/twitter/dockyard/easy_auth-twitter)

Dead simple drop in authentication for Rails

## Installation ##

In your Gemfile add the following:

```ruby
gem 'easy_auth-twitter'
```

After running Bundler you'll need to install the migrations

```ruby
rake easy_auth-twitter:install:migrations
```

Then run your migrations.

## Authors ##

[Brian Cardarella](http://twitter.com/bcardarella)

## Versioning ##

This gem follows [Semantic Versioning](http://semver.org)

## Want to help? ##

Stable branches are created based upon each minor version. Please make
pull requests to specific branches rather than master.

Please make sure you include tests!

Unles Rails drops support for Ruby 1.8.7 we will continue to use the
hash-rocket syntax. Please respect this.

Don't use tabs to indent, two spaces are the standard.

## Legal ##

[DockYard](http://dockyard.com), LLC &copy; 2012

[@dockyard](http://twitter.com/dockyard)

[Licensed under the MIT license](http://www.opensource.org/licenses/mit-license.php)
