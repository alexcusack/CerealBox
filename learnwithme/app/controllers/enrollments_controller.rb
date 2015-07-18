class EnrollmentsController < ApplicationController

  def create
    if !current_user
      p 'in if'
      render :json => { :status => 400 }, status: 420
    else
      p 'in elsef'
      enrollment = UserCourse.new(user_id: current_user.id, course_id: params[:course_id])
      render :json => { :status => 200 }, status: 200 if enrollment.save
    end
  end

end
