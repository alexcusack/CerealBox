module GooglePlus
  BASE_URL = "https://www.googleapis.com/plus/v1/people/"

  def self.access_token(user)
    @accesstoken ||= User.find(user.id).google_token
  end


  def self.get_user_friends(user)
    response = HTTParty.get("#{BASE_URL}#{user.google_uid}/people/visible?alt=json&access_token=#{GooglePlus.access_token(user)}")
  end


## this works to fetch activites https://www.googleapis.com/plus/v1/people/114785600982231839455/activities/public?alt=json&access_token=ya29.tQGtBy64a3W2T-0XGu6SrnqhVrzAlcb8PAFVE5tUVy0ikeLoV8-JRUbpv5Dho5Goy8kydG-iiA
## us id and access_token (which is per user)
##this works to get friends  https://www.googleapis.com/plus/v1/people/114785600982231839455/people/visible?alt=json&access_token=ya29.tQGtBy64a3W2T-0XGu6SrnqhVrzAlcb8PAFVE5tUVy0ikeLoV8-JRUbpv5Dho5Goy8kydG-iiA
## need to chang which token we're storing for the user in the db
end

