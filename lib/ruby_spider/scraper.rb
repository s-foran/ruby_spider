require "ruby_spider/fetcher"
require "ruby_spider/parser"

module RubySpider
  class Scraper
    def self.scrape(url, selector)
      raw_html = Fetcher.fetch(url)
      parser = Parser.new(raw_html)
      parser.text(selector)
    end
  end
end
