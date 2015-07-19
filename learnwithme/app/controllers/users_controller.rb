class UsersController < ApplicationController

  def index
    @user = User.new
  end


def create
    user_info = params['google']['cachedUserProfile']   if params['google']
    user_info = params['facebook']['cachedUserProfile'] if params['facebook']
    user = UsersHelper.Oauth_user(user_info, params)
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
    @courses = @user.owned_courses
    @sheets = @user.owned_sheets
  end

  def logout
    session[:user_id] = nil
    redirect_to courses_path
  end

end
