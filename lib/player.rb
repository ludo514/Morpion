require 'colorize'
class Player
	attr_accessor :name_joueur, :symbole
	def initialize(name_joueur, symbole)
		@name_joueur = name_joueur
		@symbole = symbole
	end
end