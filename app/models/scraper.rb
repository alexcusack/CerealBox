require 'mechanize'

module Mechanize

  class Scraper

    def self.scrape
      page = mechanize.get('http://google.com')
      page.title
    end
  end

end
