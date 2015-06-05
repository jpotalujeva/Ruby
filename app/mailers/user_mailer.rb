class UserMailer < ActionMailer::Base
  default from: "blabla@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_conrirmation.subject
  #

  def signup_conrirmation(user)
    @user = user
    mail to: user.email, subject: "Sign up Confirmation"
  end
end
