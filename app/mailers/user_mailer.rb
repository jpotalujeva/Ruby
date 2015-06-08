class UserMailer < ActionMailer::Base
  default from: "jevgenija.potalujeva@accenture.com"

  def welcome_user(user)
  	@user = user
  	@url = "http://www.accenture.com"
  	mail(to: @user.email, subject: 'test welcome email')
  end

end
