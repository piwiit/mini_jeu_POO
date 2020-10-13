# frozen_string_literal: true

require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new('Jacky')
player2 = Player.new('Michel')
puts
puts "Voici l'état de chaque joueur :\n\n"
puts player1.show_state
puts player2.show_state

puts " =====| FIGHT ! |==== \n\n "

while player1.life_point.positive? && player2.life_point.positive?
  puts player1.show_state
  puts player2.show_state

  player1.attacks(player2)
  next unless player2.life_point.positive?

  player2.attacks(player1)
  puts
  puts
  puts " =====|next round |====\n\n "

end

binding.pry
