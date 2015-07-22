module SheetsHelper
  include Readability
  def self.parse_article(url)
    response = Readability.scrape(url)
    if response
      return response
    end
  end

end
