# frozen_string_literal: true

RSpec.describe RubySpider::Scraper do
    let(:raw_html) {  }

  describe ".scrape" do
    it "returns parsed text for a CSS selector" do
      stub_request(:get, "https://example.com")
        .to_return(status: 200, body: "<html><body><h1> Hello World </h1><p> This is a test. </p></body></html>")
      result = RubySpider::Scraper.scrape("https://example.com", "h1")
      expect(result).to eq("Hello World")
    end

    it "returns nil if the CSS selector is not found" do
      stub_request(:get, "https://example.com")
        .to_return(status: 200, body: "<html><body><h1> Hello World </h1><p> This is a test. </p></body></html>")
      result = RubySpider::Scraper.scrape("https://example.com", "h2")
      expect(result).to eq(nil)
    end

    it "returns nil for an invalid CSS selector" do
      stub_request(:get, "https://example.com")
        .to_return(status: 200, body: "<html><body><h1> Hello World </h1><p> This is a test. </p></body></html>")
      result = RubySpider::Scraper.scrape("https://example.com", "N/A")
      expect(result).to eq(nil)
    end
  end
end
