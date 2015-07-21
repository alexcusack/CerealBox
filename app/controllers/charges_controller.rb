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
      course = UserCourse.where(user_id: current_user.id, course_id: @original_course.id).first_or_initialize
      course.pledged = true
      course.save
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end


end
