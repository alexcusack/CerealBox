module Readability
  BASE_URL = "https://www.readability.com/api/content/v1/parser?"

  def self.scrape(url)
    response = HTTParty.get("#{BASE_URL}url=#{url}/&token=#{ENV['READABILITY_TOKEN']}")
    binding.pry
  end

end

# response
# {"domain"=>"ddeville.me",
#  "next_page_id"=>nil,
#  "url"=>"http://ddeville.me/2015/02/interprocess-communication-on-ios-with-mach-messages//",
#  "short_url"=>"http://rdd.me/o7ezc4q2",
#  "author"=>nil,
#  "excerpt"=>"In my last article I mentioned that CFMessagePortCreateLocal() was not usable on iOS, quoting the documentation as evidence. However, I should have known better since I had recently experimented (and&hellip;",
#  "direction"=>"ltr",
#  "word_count"=>3211,
#  "total_pages"=>0,
#  "content"=> .....
 # "date_published"=>nil,
 # "dek"=>nil,
 # "lead_image_url"=>nil,
 # "title"=>"Interprocess communication on iOS with Mach messages",
 # "rendered_pages"=>1}



# 'http://blog.cryptographyengineering.com/2015/07/a-history-of-backdoors.html'
