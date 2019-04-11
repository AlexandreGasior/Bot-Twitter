require 'twitter'
require 'menu'
require 'connect'
require 'methods_both'
require 'methods_rest'
require 'methods_stream'
require 'dotenv'
Dotenv.load

class Controller
  attr_accessor :login_rest, :login_stream, :potos

  def initialize
    @login_rest = Connect.new.login_rest
    @login_stream = Connect.new.login_stream
    if ENV["POTOS"] != nil
      @potos = ENV["POTOS"].split
    end
  end

  # METHODS REST
  def write_tweet # Ecrire et envoyer un tweet
    MethodsRest.new.write_tweet(@login_rest, MethodsBoth.new.tweet)
  end

  def tweet_les_potos # Envoyer un tweet à tous les amis
    potos = @potos
    MethodsRest.new.tweet_les_potos(@login_rest, MethodsBoth.new.tweet, potos)
  end

  def add_tweet_to_favorites  # Ajouter aux favoris des tweets
    MethodsRest.new.add_tweet_to_favorites(@login_rest, MethodsBoth.new.topics, MethodsBoth.new.num)
  end

  def follow_users  # Follow
    MethodsRest.new.follow_users(@login_rest, MethodsBoth.new.topics, MethodsBoth.new.num)
  end

  # METHODS STREAM
  def like_stream # Espionner et ajouter aux favoris
    MethodsStream.new.like_stream(@login_stream, @login_rest, MethodsBoth.new.topics)
  end
end
