require_relative 'player'
require_relative 'board'
require 'colorize'
class Game
	def initialize(name_joueur1, name_joueur2)
		@joueur1 = Player.new(name_joueur1, "X")
		@joueur2 = Player.new(name_joueur2, "O")
		@board = Board.new
	end

	def menu
		coup_joueur1 = 1
		coup_joueur2 = 0
		coup_totaux = 0
		while !@board.verif_joueur1 and !@board.verif_joueur2 and coup_totaux < 9
			#@board.gets_bord
			if coup_joueur1 == 1
				puts "Le joueur 1 #{@joueur1.name_joueur} joue : Entrez une case A1,A2,A3 B1,B2,B3 C1,C2,C3"
				puts ">"
				choix = gets.chomp
				@board.mettre_x(choix, @joueur1)
				coup_joueur1 -=1
				coup_joueur2 += 1
				coup_totaux += 1
			end
			if coup_joueur2 == 1
				puts "Le joueur 2 #{@joueur2.name_joueur} joue : Entrez une case A1,A2,A3 B1,B2,B3 C1,C2,C3"
				puts ">"
				choix = gets.chomp
				@board.mettre_x(choix, @joueur2)
				coup_joueur2 = 0
				coup_joueur1 = 1
				coup_totaux += 1
			end
		end
		if @board.verif_joueur1
			puts "joueur 1 #{@joueur1.name_joueur} à Gagner"
		end
		if @board.verif_joueur2
			puts "joueur 2 #{@joueur2.name_joueur} à Gagner"
		end
		if coup_totaux == 9
			puts "Egalité !!!!!!!"
		end
	end

	def affiche
		@board.gets_board
	end
end