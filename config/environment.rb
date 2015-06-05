# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.delivery_method = :smtp

# ActionMailer::Base.delivery_method = :smtp {
#    :address => "jpotalujeva@gmail.com",
#    :domain => "gmail.com",
#    :authentication => :login,
#    :user_name => "jpotalujeva",
#    :password => "juze1616",
# }

# ActionMailer::Base.default_content_type = "text/html"