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
# => "0.0.1"
```

### Fetch and parse raw HTML
```ruby
require "ruby_spider"

# Fetch raw HTML from a URL
html = RubySpider::Fetcher.fetch("https://example.com")

# Extract specific text via CSS selector
parser = RubySpider::Parser.new(html)
title  = parser.text("h1")
```

### Scrape all-in-one
```ruby
require "ruby_spider"
text = RubySpider::Scraper.scrape("https://example.com", "h1")
```

## Development

After cloning the repo, cd into the ruby_spider directory:
```bash
cd ruby_spider
```

To install dependencies, run:

```bash
bundle install
```

To execute tests, run:
```bash
bundle exec rspec
```

To check linting, run: 
``` bash
rubocop
```

To auto-fix linting, run:
```bash
rubocop -a
```

For an interactive prompt to experiment with the gem, run:
```bash
bin/console
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/s-foran/ruby_spider. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/s-foran/ruby_spider/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RubySpider project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/s-foran/ruby_spider/blob/main/CODE_OF_CONDUCT.md).
