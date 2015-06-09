class UserMailer < ActionMailer::Base
  default from: "your@domain.com"

  def welcome_user(user)
  	@user = user
  	@url = "http://www.domain.com"
  	mail(to: @user.email, subject: 'test welcome email')
  end

end
