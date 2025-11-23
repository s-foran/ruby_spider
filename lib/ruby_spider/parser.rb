require "nokogiri"

module RubySpider
  class Parser
    def initialize(html)
      @doc = Nokogiri::HTML(html)
    end

    def text(selector)
      element = @doc.at_css(selector)
      element ? element.text.strip : nil
    end
  end
end
