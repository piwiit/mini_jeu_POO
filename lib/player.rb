# frozen_string_literal: true

class Player
  attr_accessor :name, :life_point
  # initialisation point de vie & du nom
  def initialize(name_to_save)
    @name = name_to_save.to_s
    @life_point = 10
  end

  # affichage des point de vie
  def show_state
    puts "#{@name} a #{@life_point} points de vie"
  end

  # deduction des points de vie par rapport au coup recu / fin du jeu si vie joueur = 0
  def gets_damage(hit)
    @life_point -= hit
    if @life_point <= 0
      puts
      puts ' =====================| GAME OVER ! |================='
      puts " ||            Le joueur #{name} a été tué !        ||"
      puts ' ====================================================='
    else
      puts "#{name} a subit #{hit} points de dégats"
    end
  end

  # phase d'attaque
  def attacks(name_attacked)
    puts
    puts "#{@name} attaque #{name_attacked.name}\n\n"
    hit = comput_damage
    name_attacked.gets_damage(hit)
  end

  # rand la valeur de l'attaque
  def comput_damage
    rand(1..6)
  end
end
# binding.pry
# puts 'end of file'
