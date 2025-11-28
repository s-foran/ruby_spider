module RubySpider
  class ListDefinition
    attr_accessor :selector

    def initialize(selector)
      @selector = selector
    end

    def field(name, selector, transform: nil)
      @field << FieldDefintion.new(name, selector, transform: transform)

  end
end
