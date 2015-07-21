class SigninMailer < ActionMailer::Base

  def signed_in(user)
    mail(
      to: user.email,
      from: 'summerhottie9000@gmail.com',
      subject: 'Welcome',
      body: 'Welcome to Cereal Box, '+user.first_name+"!"
      )
  end

end
