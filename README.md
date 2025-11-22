# RubySpider

RubySpider is a **declarative DSL and toolkit for web scraping** in Ruby. It allows developers to extract structured data from websites in a readable, maintainable way. It is designed to store scraped data in various formats and to be extensible for future scraping workflows.

## Installation

RubySpider is not yet published anywhere. To install the gem, place the following in your gemfile:
```ruby
gem "ruby_spider", git: "https://github.com/s-foran/ruby_spider.git"
```

or to specify a specific release:
```ruby
gem "ruby_spider", git: "https://github.com/s-foran/ruby_spider.git", "~> 0.0.1"
```

## Usage (Ruby on Rails apps)

```ruby
require "ruby_spider"

# Example placeholder usage
puts RubySpider::VERSION
# => "0.0.0"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/s-foran/ruby_spider. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/s-foran/ruby_spider/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RubySpider project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/s-foran/ruby_spider/blob/main/CODE_OF_CONDUCT.md).
