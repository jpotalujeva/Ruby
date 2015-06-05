class MailController < ApplicationController
	def new
		@mails = Mail.new
	end

def create
  Mail.create(mails_params)
  redirect_to '/'
end

private

def mails_params
  params.require(:mails).permit(:email, :message)
end

end
