module GooglePlus
  require 'Nokogiri'
  BASE_URL = "https://www.googleapis.com/plus/v1/people/"

  def self.access_token(user)
    @accesstoken ||= User.find(user.id).google_token
  end


  def self.get_user_friends(user)
    response = HTTParty.get("#{BASE_URL}#{user.google_uid}/people/visible?alt=json&access_token=#{GooglePlus.access_token(user)}")
  end

  def self.get_image(keyword)
    response = HTTParty.get("https://www.google.com/search?q=#{keyword}&source=lnms&tbm=isch")
    image = Nokogiri(response).css('img').first
    source = image.attributes['src'].value
    return source
  end


  def self.get_article(keyword)
    keyword = keyword.gsub(" ", "%20")
    response = HTTParty.get("https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=#{keyword}")
    parse = JSON.parse(response.body)
    excerpt = parse['responseData']['results'][0]['content']
    link = parse['responseData']['results'][0]['unescapedUrl']
    # scraped = SheetsHelper.parse_article(link)
    return {content: excerpt, link: link}
  end

  def self.get_video(keyword)
    keyword = keyword.gsub(" ", "+")
    response = HTTParty.get("https://gdata.youtube.com/feeds/api/videos?q=#{keyword}&start-index=11&max-results=10&v=2")
    return response
  end







end






## this works to fetch activites https://www.googleapis.com/plus/v1/people/114785600982231839455/activities/public?alt=json&access_token=ya29.tQGtBy64a3W2T-0XGu6SrnqhVrzAlcb8PAFVE5tUVy0ikeLoV8-JRUbpv5Dho5Goy8kydG-iiA
## us id and access_token (which is per user)
##this works to get friends  https://www.googleapis.com/plus/v1/people/114785600982231839455/people/visible?alt=json&access_token=ya29.tQGtBy64a3W2T-0XGu6SrnqhVrzAlcb8PAFVE5tUVy0ikeLoV8-JRUbpv5Dho5Goy8kydG-iiA
## need to chang which token we're storing for the user in the db
