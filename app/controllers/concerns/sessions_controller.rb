class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_info = params['google']['cachedUserProfile']   if params['google']
    user_info = params['facebook']['cachedUserProfile'] if params['facebook']
    if user_info
      user = UsersHelper.Oauth_user(user_info, params)
      if user.save
        session[:user_id] = user.id
        render :json => { :status => 200}
      else
        render :json => { :status => 400 },
        status: 400
      end
    else
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:email])
        session[:user_id] = user.id
        redirect_to '/'
      else
        redirect_to '/login'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
