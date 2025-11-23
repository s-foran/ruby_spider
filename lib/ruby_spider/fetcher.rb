require "faraday"

module RubySpider
  class Fetcher
    def self.fetch(url)
      response = Faraday.get(url)
      response.body
    end
  end
end
