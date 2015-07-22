module UsersHelper


  def self.Oauth_user(user_info, response_head)
    user = User.where(email: user_info['email']).first_or_initialize
    user.first_name   = user_info['given_name']
    user.last_name    = user_info['family_name']
    user.username     = user_info['name']
    user.avatar_url   = user_info['picture']
    user.google_token = response_head['google']['accessToken'] if response_head['google']
    user.password     = 'defaultpassword'
    user.google_uid   = user_info['id'] if response_head['google']
    user.email        = user_info['email']


    if response_head['facebook']
      user.first_name     = user_info['first_name']
      user.avatar_url     = user_info['picture']['url']
      user.facebook_token = response_head['facebook']['accessToken']
      user.fb_uid         = user_info['id']
      user.email          = user_info['email']
    end
    return user
  end


  def self.basic_login(params)
    user = User.where(email: params[:user][:email]).first_or_initialize
    binding.pry
    if !user.id
      return user if user.check_passwords(params) #return true or nil
    end
    p "hello"
    return user if user.authenticate(params[:user][:password])
  end


end
