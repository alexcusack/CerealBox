module UsersHelper


  def self.Oauth_user(user_info, response_head)
    user = User.where(username: user_info['name']).first_or_initialize
    user.first_name   = user_info['given_name']
    user.last_name    = user_info['family_name']
    user.username     = user_info['name']
    user.avatar_url   = user_info['picture']
    user.google_token = response_head['token'] if response_head['google']
    user.password     = 'defaultpassword'
    user.google_uid   = user_info['id'] if response_head['google']
    user.email        = user_info['email']
    binding.pry

    if response_head['facebook']
      user.first_name     = user_info['first_name']
      user.avatar_url     = user_info['picture']['url']
      user.facebook_token = response_head['token']
      user.fb_uid         = user_info['id']
      user.email          = user_info['email']
    end
    return user
  end



end
