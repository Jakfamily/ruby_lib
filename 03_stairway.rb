#lancer de des 
def roll_dice
    rand(1..6) # methode rand simule un nombre aleatoire entre 1 et 6
end

#lancer une partie 
def start_a_game
    position = 0 #commence le jeux a la marche zero
    while position < 10 # tant que la position et inferieur a 10
        roll = roll_dice # creation d'une variable qui seras egal a la fonction lancer de dés
        if roll == 1 # si le lancer est egal a 1 decends d'une marche
            position -= 1
            puts "vous decendez d'une marche, vous ete maintenant la marche #{position}"
            
        elsif roll = 5 || roll = 6 # sinon si lancer et = a 5 ou lancer = a 6 avance d'une marche
            position += 1
            puts "vous avez fait #{roll} avancez d'une marche, vous ete maintenant a la marche #{position} "
            
        else # sinon la position change pas 
            puts "vous avez fait #{roll} vous ne bougez pas, vous ete maintenant a la marche #{position} "
        end
    end
    puts "Super vous avez gagner "
end
start_a_game() # on lance la partie