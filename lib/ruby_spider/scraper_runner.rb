require "nokogiri"

module RubySpider
  class ScraperRunner
    def initalize(definition)
      @definition = definition
    end

    def run
      results = []

      @definition.start_urls.each do |url|
        html = RubySpider::Fetcher.fetch(url)
        doc = Nokogiri::HTML(html)

        @definition.lists.each do |list_def|
          doc.css(list_def.selector).each do |node|
            item = {}

            list_def.fields.each do |field|
              raw_value = node.at_css(field.selector)&.text&.strip
              value = field.transform ? field.transform.call(raw_value) : raw_value
              item[field.name] = value
            end
            results << item
          end
        end
      end
      results
    end
  end
end
