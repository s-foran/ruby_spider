# frozen_string_literal: true

RSpec.describe RubySpider::Fetcher do
  describe ".fetch" do 
    it "returns the response body as a string" do
      stub_request(:get, "http://example.com").to_return(status: 200, body: "<html>Hello World</html>")
      results = RubySpider::Fetcher.fetch("http://example.com")
      expect(results).to eq("<html>Hello World</html>")
    end
  end
end