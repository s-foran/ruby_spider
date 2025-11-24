# frozen_string_literal: true

RSpec.describe RubySpider::Fetcher do
  describe ".fetch" do
    it "returns the response body as a string for 200ok responses" do
      stub_request(:get, "http://example.com").to_return(status: 200, body: "<html>Hello World</html>")
      results = RubySpider::Fetcher.fetch("http://example.com")
      expect(results).to eq("<html>Hello World</html>")
    end

    it "raises FetchError for non 200ok responses" do
      stub_request(:get, "http://example.com").to_return(status: 404)
      expect {
        RubySpider::Fetcher.fetch("http://example.com")
    }.to raise_error(RubySpider::FetchError, /Status code: 404/)
    end

    it "raises FetchError for timeout requests" do
      stub_request(:get, "http://example.com").to_timeout
      expect {
        RubySpider::Fetcher.fetch("http://example.com")
      }.to raise_error(RubySpider::FetchError, /Network error/)
    end

    it "raises FetchError for connection refused errors" do
      stub_request(:get, "http://example.com").to_raise(Faraday::ConnectionFailed.new("Connection refused"))
      expect {
        RubySpider::Fetcher.fetch("http://example.com")
    }.to raise_error(RubySpider::FetchError,  /Network error/)
    end
  end
end
