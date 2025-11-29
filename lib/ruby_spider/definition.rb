module RubySpider
  class Definition
    attr_accessor :start_urls, :lists, :pagination_selector

    def initialize
      @start_urls = []
      @lists = []
    end

    def start_at(urls)
      @start_urls = Array(urls)
    end

    def list(selector, &block)
      list_def = ListDefinition.new(selector)
      list_def.instance_eval(&block) if block_given?
      @lists << list_def
    end

    def run
      ScraperRunner.new(self).run
    end

    def paginate(selector)
      @pagination_selector = selector
    end
  end
end
