# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/signup_conrirmation
  def signup_conrirmation
    UserMailer.signup_conrirmation
  end

end
