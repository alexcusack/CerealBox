class UsersController < ApplicationController

  def index
  end



  def create
    user_info = params['google']['cachedUserProfile']   if params['google']
    user_info = params['facebook']['cachedUserProfile'] if params['facebook']
    user = User.where(username: user_info['name']).first_or_initialize
    user = User.new(
        first_name:   user_info['name'],
        last_name:    user_info['family_name'],
        username:     user_info['name'],
        avatar_url:   user_info['picture'],
        google_token: params['token'],
        )
    if params['facebook']
      user.avatar_url = user_info['picture']['url']
      user.facebook_token = params['token']
      user.google_token = nil
    end
    if user.save
       render :json => { :status => 200}
    else
       render :json => { :status => 400 },
       status: 400
    end
  end



end
