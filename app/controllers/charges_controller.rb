class ChargesController < ApplicationController


  def create

    @original_course = Course.find(params['course'])
    # Amount in cents
    @amount = 500
    customer = Stripe::Customer.create(
      :email => params['stripeEmail'],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Course pledge!',
      :currency    => 'usd'
    )

    if charge['status'] == "succeeded"
      enrollment = UserCourse.where(user_id: current_user.id, course_id: @original_course.id).first_or_initialize
      enrollment.pledged = true
      enrollment.save
      @course = Course.find(enrollment.course_id)
      # SigninMailer.joined_course(current_user, @course).deliver_now
    end
    redirect_to course_path(@course)
    rescue Stripe::CardError => e
    flash[:error] = e.message
  end

end
