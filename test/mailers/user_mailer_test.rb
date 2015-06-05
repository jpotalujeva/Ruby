require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signup_conrirmation" do
    mail = UserMailer.signup_conrirmation
    assert_equal "Signup conrirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
