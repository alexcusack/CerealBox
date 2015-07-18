class EnrollmentsController < ApplicationController

  def create
    rerturn render :json => { :status => 400 }, status: 400 if !current_user

    if params['option'] == 'Join course'
      enrollment = EnrollmentsHelper.add_user_to_course(current_user, params['course_id'])
      render :json => { :course => 'join' }, status: 200 if enrollment.save
    elsif params['option'] == 'Joined'
      binding.pry
      EnrollmentsHelper.remove_user_from_course(current_user, params['course_id'])
      render :json => { :course => 'leave' }, status: 200
    end

  end

end
