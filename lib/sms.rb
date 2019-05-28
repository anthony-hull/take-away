require 'twilio-ruby'
require 'Date'

class Sms
  def initialize
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send
    from_num = ENV["TWILIO_FROM_NUM"]
    to_num = ENV["TWILIO_TO_NUM"]
    make_message
    @client.messages.create(from: from_num, to: to_num, body: @success_message)
  end
  private

  def make_message
    time = Time.new
    time += 3600
    @success_message = "Thank you! Your order was placed and will be delivered before #{time.strftime("%H:%M")}"
  end
end