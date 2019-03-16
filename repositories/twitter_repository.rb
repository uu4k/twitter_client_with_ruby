require "bundler/setup"
require 'twitter'
require File.dirname(__FILE__) + '/../usecases/timeline/i_twitter_repository'

class TwitterRepository
  def initialize(consumer_api_key, consumer_api_secret_key, access_token, access_token_secret)
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = consumer_api_key
      config.consumer_secret     = consumer_api_secret_key
      config.access_token        = access_token
      config.access_token_secret = access_token_secret
    end
  end

  include Timeline::ITwitterRepository

  def timeline
    @client.home_timeline
  end
end
