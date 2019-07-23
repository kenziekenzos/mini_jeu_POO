require 'pry'
require 'bundler'

class Player
    attr_accessor :name, :life_points 

    def initialize(name)
        @name = name
        @life_points = 10
       
    end

    def show_state
        puts  "#{name} a #{life_points} points de vie !"
    end

    def gets_damage(damage_received)
        @life_points = @life_points-damage_received
    
        if  @life_points <= 0
             puts "Le joueur #{name} a été tué !" 
        end
    end

    def attacks(player_attacked) #calcule les dommages que player1 va faire subir à player2
        puts  "#{name} attaque #{player_attacked.name}." 
        damage_received = compute_damage
        player_attacked.gets_damage(damage_received) #retrait de point
        puts "il lui inflige #{damage_received} points de dommages"

    end 

    def compute_damage
        return rand(1..6)
    end

end
puts "end of file"
