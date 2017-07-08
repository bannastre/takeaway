require_relative '../api_keys'
require 'twilio-ruby'

class Notification

  def initialize(message)
    @message = message
  end

  def send
    account_sid = ACCOUNT_SID
    auth_token = AUTH_TOKEN
    from = FROM
    to = TO

    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.account.messages.create(
      :to   => to,
      :from => from,
      :body => @message
      )
  end

end
