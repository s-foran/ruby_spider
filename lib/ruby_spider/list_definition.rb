module RubySpider
  class ListDefinition
    attr_accessor :selector

    def initialize(selector)
      @selector = selector
    end
  end
end
