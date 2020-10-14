require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/humain_player'

puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"
# choix du nom de l'avatar
puts "Choisis un nom d'avatar :"
print '> '
humain_player = HumanPlayer.new(gets.chomp)
# creation de la condition si les joueur on toujours de la vie , on continu le combat
enemies = []
enemies << enemies1 = Player.new('Jacquie')
enemies << enemies2 = Player.new('Michel')
while humain_player.life_point.positive? && (enemies1.life_point.positive? || enemies2.life_point.positive?)
  humain_player.show_state
  binding.pry

  puts "Quelle action veux-tu effectuer ?\n\n"
  puts 'a - chercher une meilleure arme'
  puts 's - chercher à se soigner'
  puts
  puts
  puts "attaquer un joueur en vue :\n\n"

  puts '0 - Jacquie a #{humain_player.show_state} points de vie'
  puts '1 - Michel a #{enemies2.show_state} points de vie'
  puts
  print '> '
  action = gets.chomp
  case action
  when 'a'
    humain_player.search_weapon
  when 's'
    humain_player.search_healp_pack
  when '0'
    humain_player.attacks(enemies1)
    next unless player2.life_point.positive?

    enemies1.attacks(humain_player)

  when '1'
    humain_player.attacks(enemies2)
    next unless enemies2.life_point.positive?

    enemies2.attacks(humain_player)

  else
    puts 'not this command !'
  end

end
if humain_player.life_point <= 0
  puts ' Looser !'
  exit
else
  puts ' BRAVOS , TU A GAGNE !!'
  exit
end
binding.pry
