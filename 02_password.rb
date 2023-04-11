def signup

    puts " definisez un mot de passe"
    
    password = gets.chomp
    
    return password
end
    
def login(password)
    
 puts " entrez votre mots de passe "
    
log = gets.chomp
    
    #Tant que le mot de passe saisi n'est pas le même que celui défini par l'utilisateur, elle continue de demander un mot de passe
    
    while log != password # != "different de"
    
    puts "mot de passe incorrect recomencer"
    
    log = gets.chomp
    
    end
    
    puts "mot de passe correct,vous accedez a l'espace secret "
    
    end
    
      
    # Cette fonction exécute les fonctions signup et login dans l'ordre
    
def perform
    
password = signup
    
login(password)
    
end

perform()