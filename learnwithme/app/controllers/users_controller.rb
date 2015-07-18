class UsersController < ApplicationController

  def index
  end



  def create
    user_info = params['google']['cachedUserProfile']   if params['google']
    user_info = params['facebook']['cachedUserProfile'] if params['facebook']
    p "*" * 100
    p user_info
    p "*" * 100
    user = User.where(username: user_info['name']).first_or_initialize
    user.first_name   = user_info['given_name']
    user.last_name    = user_info['family_name']
    user.username     = user_info['name']
    user.avatar_url   = user_info['picture'] if params['google']
    user.avatar_url = user_info['picture']['url'] if params['facebook']
    user.google_token = params['token'] if params['google']
    user.facebook_token = params['token'] if params['facebook']

    if user.save
      session[:user_id] = user.id
      render :json => { :user => 200}
    else
      render :json => { :status => 400 },
      status: 400
    end
  end
end
