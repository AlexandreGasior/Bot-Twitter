require 'controller'
require 'done'

######################################################################################
## *********************** MA SUPER UI 2.0 MIEUX QUE BOOTSTRAP ***********************
######################################################################################
class Menu
  def opening
  	loop do
      menu
  		user_input = gets.chomp.to_i
      puts ''

  		case user_input
  		when 1  # Ecrire et envoyer un tweet
        Controller.new.write_tweet
      when 2  # Envoyer un tweet à tous les amis
        Controller.new.tweet_les_potos
      when 3  # Ajouter aux favoris des tweets
        Controller.new.add_tweet_to_favorites
  		when 4  # Follow
        Controller.new.follow_users
  		when 5  # Espionner et ajouter aux favoris
        Controller.new.like_stream
  		when 6
        Bye.new.time_to_say_goodbye
  			break
  		else
  			puts "Choix non valide\n\n"
  		end
  	end
  end

  def menu
    puts `clear`
    puts "==" * 25
    puts " Yo !!!\n Tu veux faire quoi aujourd'hui ?\n"
    puts "--" * 25 + "\n\n"
    puts "1 - Envoyer un tweet"
    puts "2 - Envoyer un tweet à tous les amis"
    puts "3 - Ajouter aux favoris les \"x\" derniers tweets contenant \"y\""
    puts "4 - Follow les personnes ayant postés les \"x\" derniers tweets contenant \"y\""
    puts "5 - Mode stream"
    puts "6 - Quitter le programme\n\n"
    puts "--" * 25
    print "> "
  end
end
