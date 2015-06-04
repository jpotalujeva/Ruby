class Emailer < ActionMailer::Base
   def contact(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = 'jpotalujeva@gmail.com'
      @from = 'current_user.email'
      @sent_on = sent_at
	  @body["title"] = 'This is title'
   	  @body["message"] = message
      @headers = {}
   end
end
