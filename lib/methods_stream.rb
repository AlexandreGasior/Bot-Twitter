require 'controller'
require 'twitter'
require 'dotenv'
Dotenv.load

class MethodsStream

  ## ==================== METHODES EN MODE STREAM ====================
  # --- Follow et like automatiquement dès qu'un nouveau tweet d'un sujet selectionné est crée
  def like_stream(stream, client, topics)
    i = 0
    stream.filter(track: topics) do |tweet|
    	client.favorite(tweet) # && client.follow(tweet.user)
    	puts tweet.text
      i += 1
      puts "#{i} tweets <3"
      sleep(0.1)
  	end
  end
end
