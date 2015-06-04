class Mails < ActionMailer::Base
  def welcome_email(user)
  	recipients current_user.email,
  	from Localhost
  	subject "Welcome"
  	sent_on Time.now
  	body {current_user.first_name; :url => '/login'}
  end
end
