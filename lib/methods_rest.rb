require 'controller'
require 'twitter'
require 'dotenv'
Dotenv.load

class MethodsRest

  ## ==================== METHODES EN MODE REST ====================
  # --- Envoi un tweet à 5 journalistes pris aux hasard dans l'array
  def tweet_les_potos(client, my_tweet, potos)
  	potos.each do |poto|
  	client.update ("#{poto}" + my_tweet)
  	end
  end

  # --- Ajoute aux favoris les "num" derniers messages d'un # choisi
  def add_tweet_to_favorites(client, topics, num)
  	client.search(topics, result_type: "mixed").take(num).each{|tweet| client.favorite(tweet)}
  end

  # --- Follow les "num" dernières personnes ayant utilisées le # choisi
  def follow_users(client, topics, num)
  	client.search(topics, result_type: "mixed").take(num).each{|tweet| client.follow(tweet.user)}
  end

  # --- Ecrire un tweet
  def write_tweet(client, my_tweet)
  	client.update (my_tweet)
  end
end
