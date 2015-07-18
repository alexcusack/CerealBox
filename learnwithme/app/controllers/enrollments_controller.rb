class EnrollmentsController < ApplicationController

  def create
    return :json => { :status => 400 }, status: 400 if !current_user
    if params['option'] == 'Join course'
      enrollment = EnrollmentsHelper.add_user_to_course(current_user, params['course_id'])
      render :json => { :course => 'course joined' }, status: 200 if enrollment.save
    elsif params['option'] == 'Leave Course'
      EnrollmentsHelper.remove_user_from_course(current_user, params['course_id'])
      render :json => { :course => 'course left' }, status: 200
    end
  end

end
