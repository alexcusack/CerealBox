class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_info = params['google']['cachedUserProfile']   if params['google']
    user_info = params['facebook']['cachedUserProfile'] if params['facebook']
    if user_info
      user = UsersHelper.Oauth_user(user_info, params)
      binding.pry
    else
      user = UsersHelper.basic_login(params)
      user.update_attributes(user_params) if user
    end
    exists = user.id
    if user && user.save
      # SigninMailer.signed_in(user).deliver_now if !exists
      session[:user_id] = user.id
      render :json => { :status => 200}
    else
      binding.pry
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

  private

  def check_email(user, input)
    if user
      if user[:email] == input[:user][:email]
        return true
      end
    end
    return false
  end

 def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
 end

end
