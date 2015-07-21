class SigninMailer < ActionMailer::Base

  def signed_in(user)
    mail(
      to: user.email,
      from: 'summerhottie9000@gmail.com',
      subject: 'Welcome',
      body: 'Welcome to Cereal Box, '+user.first_name+"!"
      )
  end

  def joined_course(user,course)
    mail(
      to: user.email,
      from: 'summerhottie9000@gmail.com',
      subject: 'You have just joind '+course.title+'!'
      body: "Thank you for pledging to "+course.tilte+". The course will start on: "+course.start_date+". Be sure to be there!
      Thanks."
      )

end
