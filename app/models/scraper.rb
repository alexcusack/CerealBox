
module Scraper

  class Client
    # def self.scrape(page)
    #   mechanize = Mechanize.new
    #   page = mechanize.get(page)
    #   page.title
    # end
    include HTTParty
    # base_uri "https://www.readability.com/api.content/v1/parser"

    def initialize
      @readability_token = ENV['READABILITY_TOKEN']
    end

    def self.scrape(page)
      base_uri = "https://www.readability.com/api.content/v1/parser"
      # query = {
      #   url: page,
      #   token: ENV['READABILITY_TOKEN']
      # }
      response = HTTParty.get("#{base_uri}?url=#{page}&token=188f79d6464d20d882fca42834cc9f7d9335ddcd")
      # response = HTTParty.get(page, query: query)
      binding.pry
    end

  end

end
