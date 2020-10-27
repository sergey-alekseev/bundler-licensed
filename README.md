[![Gem Version](https://badge.fury.io/rb/bundler-licensed.svg)](https://badge.fury.io/rb/bundler-licensed)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/9a1e5958c5244a80b395eaf7ca3564c5)](https://www.codacy.com/manual/sergey_14/bundler-licensed?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=sergey-alekseev/bundler-licensed&amp;utm_campaign=Badge_Grade)
[![Build Status](https://travis-ci.com/sergey-alekseev/bundler-licensed.svg?branch=master)](https://travis-ci.com/sergey-alekseev/bundler-licensed)

# Bundler::Licensed

Use [a Bundler hook](https://bundler.io/v2.0/guides/bundler_plugins.html#developing_your_plugin_hooks) to automatically run `licensed cache -s bundler` after running `bundle install` or `bundle update` commands.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bundler-licensed'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bundler-licensed

## Usage

Add this line to your application's Gemfile:

```ruby
plugin 'bundler-licensed'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ bundle plugin install bundler-licensed

For more info read [how to use Bundler plugins](https://bundler.io/v2.0/guides/bundler_plugins.html#using-a-plugin).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sergey-alekseev/bundler-licensed.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
