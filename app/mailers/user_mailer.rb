class UserMailer < ActionMailer::Base
  default from: "info@blinddate.com"


  def confirm_email(user)
  	@user = user
  	mail(to: user.email, subject: "Confirm your email for Blind Date")
  end
end
