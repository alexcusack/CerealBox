
module Scraper

  class Client
    include HTTParty
    base_uri "https://www.readability.com"

    def initialize
      @readability_token = ENV['READABILITY_TOKEN']
    end

    def scrape(page)
      query = {
        url: page,
        token: @readability_token
      }
      response = self.class.get("/api/content/v1/parser", query: query )
    end

  end

end
