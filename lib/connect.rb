require 'controller'
require 'twitter'
require 'dotenv'
Dotenv.load

class Connect

	## =================================================================
	## ==================== CONNECTION EN MODE REST ====================
	def login_rest
		client = Twitter::REST::Client.new do |config|
		config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
		config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
		config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
		end
	end

	## ===================================================================
	## ==================== CONNECTION EN MODE STREAM ====================
	def login_stream
	  stream = Twitter::Streaming::Client.new do |config|
	  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	  end
	end
end
