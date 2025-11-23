# frozen_string_literal: true

require_relative "ruby_spider/version"
require_relative "ruby_spider/errors"
require "ruby_spider/fetcher"
require "ruby_spider/parser"
require "ruby_spider/scraper"

module RubySpider
  class Error < StandardError; end

  def self.scrape(url)
    response = Fetcher.fetch(url)
  end
end
