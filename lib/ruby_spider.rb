# frozen_string_literal: true

require_relative "ruby_spider/version"
require "ruby_spider/fetcher"

module RubySpider
  class Error < StandardError; end

  def self.scrape(url)
    response = Fetcher.fetch(url)
  end
end
