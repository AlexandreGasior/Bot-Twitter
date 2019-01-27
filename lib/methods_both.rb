require 'controller'
require 'twitter'
require 'dotenv'
Dotenv.load

class MethodsBoth

  ## ==================== METHODES ANNEXES ====================
  # --- Méthodes communes au mode rest et stream
  def tweet
    puts "Balances ton tweet ?"
    print "> "
    gets.chomp
  end

  def topics
    puts "Choisis les sujets que tu veux suivre au format suivant : sujet_1, sujet_2, ..."
    print "> "
    gets.chomp
  end

  def num
    puts "Combien de fois veux-tu réaliser cette action ?"
    print "> "
    gets.chomp.to_i
  end
end
