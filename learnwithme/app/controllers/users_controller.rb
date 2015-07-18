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

    if params['google']
      user.first_name   = user_info['given_name']
      user.last_name    = user_info['family_name']
      user.username     = user_info['name']
      user.avatar_url   = user_info['picture']
      user.google_token = params['token']
    end

    if params['facebook']
      user.first_name   = user_info['first_name']
      user.last_name    = user_info['last_name']
      user.username     = user_info['name']
      user.avatar_url = user_info['picture']['data']['url']
      user.facebook_token = params['token']
    end

    if user.save
      session[:user_id] = user.id
      render :json => { :user => 200}
    else
      render :json => { :status => 400 },
      status: 400
    end
  end

  def show
    @user = current_user
  end

end
