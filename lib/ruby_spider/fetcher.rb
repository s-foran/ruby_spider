require "faraday"

module RubySpider
  class Fetcher
    def self.fetch(url)
      response = Faraday.get(url)

      unless response.success?
        raise FetchError, "Failed to fetch from '#{url}' - Status code: #{response.status}"
      end
      response.body
    rescue Faraday::Error => e
      raise FetchError, "Network error: #{e.class} - #{e.message}"
    end
  end
end
