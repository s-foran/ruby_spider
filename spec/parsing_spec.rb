# frozen_string_literal: true

RSpec.describe RubySpider::Parser do
  let(:raw_html) { "<html><body><h1> Hello World </h1><p> This is a test. </p></body></html>" }
  describe "#text" do
    it "returns the text content for a valid CSS selector" do
      parser = RubySpider::Parser.new(raw_html)
      expect(parser.text("h1")).to eq("Hello World")
      expect(parser.text("p")).to eq("This is a test.")
    end

    it "returns nil for a non-existing CSS selector" do
      parser = RubySpider::Parser.new(raw_html)
      expect(parser.text("h2")).to be_nil
    end
  end
end
