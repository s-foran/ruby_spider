module RubySpider
  class FieldDefinition
    attr_reader :name, :selector, :transform

    def initialize(name, selector, transform: nil)
      @name = name
      @selector = selector
      @transform = transform
    end
  end
end
