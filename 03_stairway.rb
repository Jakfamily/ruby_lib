# Lancer de dés
def roll_dice
    rand(1..6) # méthode rand simule un nombre aléatoire entre 1 et 6
  end
  
  # Lancer une partie
  def play_game
    position = 0 # commence le jeu à la marche zero
    while position < 10 # tant que la position est inférieure à 10
      roll = roll_dice # création d'une variable qui sera égale à la fonction lancer de dés
      if roll == 1 # si le lancer est égal à 1, descend d'une marche
        position -= 1
        puts "Vous descendez d'une marche, vous êtes maintenant à la marche #{position}."
      elsif roll == 5 || roll == 6 # sinon, si le lancer est égal à 5 ou 6, avance d'une marche
        position += 1
        puts "Vous avez fait #{roll}, avancez d'une marche. Vous êtes maintenant à la marche #{position}."
      else # sinon, la position ne change pas
        puts "Vous avez fait #{roll}, vous ne bougez pas. Vous êtes maintenant à la marche #{position}."
      end
    end
    puts "Super, vous avez atteint la 10ème marche !"
  end
  
  # Calculer le nombre moyen de tours pour atteindre la 10ème marche
  def average_finish_time
    total_turns = 0 # déclare le total de tours
    num_simulations = 100 # déclare le nombre de simulations à effectuer
  
    num_simulations.times do # itérateur pour répéter le nombre de simulations en fonction des paramètres passés
      turns = 0
      position = 0
  
      while position < 10
        roll = roll_dice
        turns += 1
        if roll == 1
          position -= 1
        elsif roll == 5 || roll == 6
          position += 1
        end
      end
      total_turns += turns
    end
    average_turns = total_turns.to_f / num_simulations
    puts "En moyenne, il faut #{average_turns} tours pour atteindre la 10ème marche."
  end
  
  # Exécution de la méthode pour jouer une partie
  play_game()
  
  # Exécution de la méthode pour simuler plusieurs parties et calculer la moyenne de tours pour atteindre la 10ème marche
  average_finish_time()
  
        
