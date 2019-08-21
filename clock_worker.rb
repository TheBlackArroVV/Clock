# frozen_string_literal: true

class ClockWorker
  include Sidekiq::Worker

  def perform
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    client.calls.create(
      url: 'http://demo.twilio.com/docs/voice.xml',
      to: ENV['TO'],
      from: ENV['FROM']
    )
  end
end
