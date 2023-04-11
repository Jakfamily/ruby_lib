def wtf_pyramid

    puts "Salut, bienvenue dans ma super pyramide ! Combien
    d'étages veux-tu ?"
    numbers_of_floors = gets.chomp.to_i
    # Vérifie si le nombre est impair
    if numbers_of_floors % 2 == 0
    
    puts "Désolé, le nombre doit être impair. S'il te plaît,réessaye."
    
    return
    
    end
    
    puts "voici la pyramide :"
    
    # Boucle sur chaque étage de la pyramide, de haut en bas
    
    1.upto(numbers_of_floors) do |i|
    
    # Affiche les espaces nécessaires pour centrer le dièse à chaque étage
    
    (numbers_of_floors - i).times {print " "}
    
    # Affiche les dièses pour la première moitié de l'étage
    
    i.times { print "#"}
    
     # Affiche les dièses pour la seconde moitié de l'étage
    
    (i - 1).times {print "#"}
    
    # Passe à la ligne suivante pour passer à l'étage suivant
    
    puts
    
    end
    
      
    
     # Boucle sur chaque étage de la pyramide, de bas en haut
    
    numbers_of_floors.downto(1) do |i|
    
      
    
    # Affiche les espaces nécessaires pour centrer le dièse à chaque étage
    
    (numbers_of_floors - i).times {print " "}
    
      
    
    # Affiche les dièses pour la première moitié de l'étage
    
    i.times { print "#"}
    
      
    
    # Affiche les dièses pour la seconde moitié de l'étage
    
     (i - 1).times {print "#"}
    
     # Passe à la ligne suivante pour passer à l'étage suivant
    
    puts
    
     end
    
end
    
      
    
    wtf_pyramid()