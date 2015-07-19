class UsersController < ApplicationController

  def index
  end


def create
    user_info = params['google']['cachedUserProfile']   if params['google']
    user_info = params['facebook']['cachedUserProfile'] if params['facebook']
    user = User.where(username: user_info['name']).first_or_initialize
    user.first_name   = user_info['given_name']
    user.last_name    = user_info['family_name']
    user.username     = user_info['name']
    user.avatar_url   = user_info['picture']
    user.google_token = params['token'] if params['google']

    if params['facebook']
      user.first_name = user_info['first_name']
      user.avatar_url = user_info['picture']['url']
      user.facebook_token = params['token']
    end

    if user.save
      session[:user_id] = user.id
      render :json => { :status => 200}
    else
      render :json => { :status => 400 },
      status: 400
    end
  end

  def show
    @user = current_user
  end

end
