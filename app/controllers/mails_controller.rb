class MailsController 
	def index
		Mails.registration_confirmation(@user).deliver
	end
end