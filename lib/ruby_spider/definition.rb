module RubySpider
  class Definition
    attr_accessor :start_urls

    def initialize
      @start_urls = []
    end

    def start_at(urls)
      @start_urls = Array(urls)
    end
  end
end
