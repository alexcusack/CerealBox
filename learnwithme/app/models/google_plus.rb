module GooglePlus
  BASE_URL = "https://www.googleapis.com/plus/v1/"

  def self.token(accesstoken)
    @accesstoken ||= accesstoken
  end

  def self.api_key

  end


  def self.get_user_info(user)


  end
## this works to fetch activites https://www.googleapis.com/plus/v1/people/114785600982231839455/activities/public?alt=json&access_token=ya29.tQGtBy64a3W2T-0XGu6SrnqhVrzAlcb8PAFVE5tUVy0ikeLoV8-JRUbpv5Dho5Goy8kydG-iiA
## us id and access_token (which is per user)
##this works to get friends  https://www.googleapis.com/plus/v1/people/114785600982231839455/people/visible?alt=json&access_token=ya29.tQGtBy64a3W2T-0XGu6SrnqhVrzAlcb8PAFVE5tUVy0ikeLoV8-JRUbpv5Dho5Goy8kydG-iiA
## need to chang which token we're storing for the user in the db
end

