# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
Rails::Initializer.run do |config|
	config.active_record.observers = :user.observers
end
config.action_mailer.default_url_options = { :host => "http://192.168.221.10:3000/" }
# ActionMailer::Base.delivery_method = :smtp

# ActionMailer::Base.server_settings = {
#    :address => "jpotalujeva@gmail.com",
#    :domain => "gmail.com",
#    :authentication => :login,
#    :user_name => "jpotalujeva",
#    :password => "juze1616",
# }

# ActionMailer::Base.default_content_type = "text/html"