#$:.unshift File.expand_path("./../lib", __FILE__)
require_relative 'lib/game'
require 'colorize'
def main

	puts "Entrez nom joueur 1"
	print ">"
	joueur1 = gets.chomp
	puts "Entrez nom joueur 2"
	print ">"
	joueur2 = gets.chomp
	puts "-------------------------------------"
	puts "Le joueur1 à les X et joueur2 à les O"
	game = Game.new(joueur1, joueur2)
	#game.affiche
	puts "-------------------------------------"
	game.menu

end

main