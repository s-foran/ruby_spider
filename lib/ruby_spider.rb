# frozen_string_literal: true

require_relative "ruby_spider/version"
require_relative "ruby_spider/errors"
require "ruby_spider/fetcher"
require "ruby_spider/parser"
require "ruby_spider/scraper"
require "ruby_spider/field_definition"
require "ruby_spider/list_definition"
require "ruby_spider/scraper_runner"

module RubySpider
  class Error < StandardError; end

  def self.scrape(url)
    response = Fetcher.fetch(url)
  end

  def self.define(&block)
    definition = Definition.new
    definition.instance_eval(&block) if block_given?
    definition
  end
end
