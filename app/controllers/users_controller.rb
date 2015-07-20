class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_info = params['google']['cachedUserProfile']   if params['google']
    user_info = params['facebook']['cachedUserProfile'] if params['facebook']
    binding.pry
    if user_info
      binding.pry
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
      if check_email(user,params)
        session[:user_id] = user.id
        redirect_to '/'
      elsif params[:password] == params[:password_confirmation]
        user = User.new(user_params)
        if user.save
          session[:user_id] = user.id
          redirect_to '/'
        else
          redirect_to '/signup'
        end
      else
        redirect_to '/login'
      end
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
      if user[:email] == input[:email]
        return true
      end
    end
    return false
  end

 def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
 end

end
