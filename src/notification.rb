require_relative '../api_keys'
require 'twilio-ruby'

class Notification

  def initialize(message)
    @message = message
  end

  def generate_and_send(to)
    client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN
    send(client, to)
  end

  private

  def send(client, to)
    client.account.messages.create(
      :to   => to,
      :from => FROM,
      :body => @message
      )
    end

end
