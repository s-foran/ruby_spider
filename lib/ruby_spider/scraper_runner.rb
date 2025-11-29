require "nokogiri"

module RubySpider
  class ScraperRunner
    def initialize(definition)
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


    def fetch_all_pages(start_url)
      pages = []
      current_url = start_url

      loop do
        html = RubySpider::Fetcher.fetch(current_url)
        pages << html

        break unless @definition.pagination_selector

        doc = Nokogiri::HTML(html)
        next_link = doc.at_css(@definition.pagination_selector)&.[]("href")

        break unless next_link

        current = URI.join(current, next_link).to_s
      end
      pages
    end
  end
end
