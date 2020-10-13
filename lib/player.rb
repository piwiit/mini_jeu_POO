# frozen_string_literal: true

class Player
  attr_accessor :name, :life_point

  def initialize(name_to_save)
    @name = name_to_save.to_s
    @life_point = 10
  end

  def show_state
    puts "#{@name} a #{@life_point} points de vie"
  end

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

  def attacks(name_attacked)
    puts
    puts "#{@name} attaque #{name_attacked.name}\n\n"
    hit = comput_damage
    name_attacked.gets_damage(hit)
  end

  def comput_damage
    rand(1..6)
  end
end
# binding.pry
# puts 'end of file'
