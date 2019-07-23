require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


def attacks 
        player1 = Player.new("Josianne") 
        player2 = Player.new("José") 

        while player1.life_points > 0 && player2.life_points > 0 # Tant qu'aucun joueur n'est mort, la boucle while continue.

            puts "Voici l'état de chaque joueur :"
            puts "-------"
            puts player1.show_state
            puts player2.show_state
            puts "Phase d'attaque : FIGHT !"  # Fight des joueurs.
            puts "                  "
            player1.attacks(player2)
             
            if player2.life_points <=0  || player1.life_points <= 0
                    break # si l'un des deux joueurs est mort, ça sort de la boucle fin du game
             end
             puts "                  "
             else
              player2.attacks(player1)
             end
        end
end
attacks

