# frozen_string_literal: true

require 'rubygems'
require 'twilio-ruby'
require 'sidekiq'
require_relative 'clock_worker'

one_hour = 60 * 60

ClockWorker.perform_at(Time.now + one_hour * 10.5)
