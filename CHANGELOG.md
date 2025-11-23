## [Unreleased]

## [0.0.0] - 2025-11-22
### Added
- Initial gem scaffold
- Gemspec metadata
- README.md
- CHANGELOG.md
- CODE_OF_CONDUCT.md
- RSpec skeleton tests

## [0.0.1] - 2025-11-23
### Added
- `Fetcher` class
  - Faraday-based HTTP client
  - Handles non-200 responses, timeouts, and connection errors
  - Fully tested using WebMock stubs
- `Parser` class
  - Lightweight Nokogiri wrapper
  - Exposes `#text(selector)` for simple text extraction
  - Tested for valid/missing selectors
- `Scraper` class
  - Integrates Fetcher + Parser
  - Provides `.scrape(url, selector)` interface
  - Includes integration tests using WebMock
- RuboCop fixes and clean codebase