require './classes/game'
require './classes/turn'
require './classes/question'
require './classes/player'

puts "Enter name for Player 1:"
name1 = gets.chomp
puts "Enter name for Player 2:"
name2 = gets.chomp

player1 = Player.new(name1.empty? ? "P1" : name1)
player2 = Player.new(name2.empty? ? "P2" : name2)

game = Game.new(player1, player2)
game.start