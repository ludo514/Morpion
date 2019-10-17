require_relative 'boardCase'
require 'colorize'
class Board
	def initialize()
		@bord = [[BoardCase.new("A1", " "), BoardCase.new("A2", " "), BoardCase.new("A3", " ")],
				[BoardCase.new("B1"," "),BoardCase.new("B2"," "), BoardCase.new("B3" ," ")],
				[BoardCase.new("C1"," "), BoardCase.new("C2", " "), BoardCase.new("C3"," ")]]
	end
	def verif_joueur1
		if (@bord[0][0].get_symbol == "X".green and @bord[0][1].get_symbol == "X".green and @bord[0][2].get_symbol == "X".green) or
			(@bord[1][0].get_symbol == "X".green and @bord[1][1].get_symbol == "X".green and @bord[1][2].get_symbol == "X".green) or
			(@bord[2][0].get_symbol == "X".green and @bord[2][1].get_symbol == "X".green and @bord[2][2].get_symbol == "X".green) or
			(@bord[0][0].get_symbol == "X".green and @bord[1][1].get_symbol == "X".green and @bord[2][2].get_symbol == "X".green) or
			(@bord[0][2].get_symbol == "X".green and @bord[1][1].get_symbol == "X".green and @bord[2][0].get_symbol == "X".green) or
			(@bord[0][0].get_symbol == "X".green and @bord[1][0].get_symbol == "X".green and @bord[2][0].get_symbol == "X".green) or
			(@bord[0][1].get_symbol == "X".green and @bord[1][1].get_symbol == "X".green and @bord[2][1].get_symbol == "X".green) or
			(@bord[0][2].get_symbol == "X".green and @bord[1][2].get_symbol == "X".green and @bord[2][2].get_symbol == "X".green)

			return true
		end
	end
	def verif_joueur2
		if (@bord[0][0].get_symbol == "O".red and @bord[0][1].get_symbol == "O".red and @bord[0][2].get_symbol == "O".red) or
			(@bord[1][0].get_symbol == "O".red and @bord[1][1].get_symbol == "O".red and @bord[1][2].get_symbol == "O".red) or
			(@bord[2][0].get_symbol == "O".red and @bord[2][1].get_symbol == "O".red and @bord[2][2].get_symbol == "O".red) or
			(@bord[0][0].get_symbol == "O".red and @bord[1][1].get_symbol == "O".red and @bord[2][2].get_symbol == "O".red) or
			(@bord[0][2].get_symbol == "O".red and @bord[1][1].get_symbol == "O".red and @bord[2][0].get_symbol == "O".red) or
			(@bord[0][0].get_symbol == "O".red and @bord[1][0].get_symbol == "O".red and @bord[2][0].get_symbol == "O".red) or
			(@bord[0][1].get_symbol == "O".red and @bord[1][1].get_symbol == "O".red and @bord[2][1].get_symbol == "O".red) or
			(@bord[0][2].get_symbol == "O".red and @bord[1][2].get_symbol == "O".red and @bord[2][2].get_symbol == "O".red)

			return true
		end
	end
	def mettre_x(valeur, joueur)
		system('clear')
		puts "-------------------------------"
		for i in (0..2)
			print "|"
			for j in (0..2)
				if valeur == @bord[i][j].get_name and @bord[i][j].get_symbol == " "
					@bord[i][j].set_symbole(joueur.symbole)
					@bord << @bord[i][j].get_case
				else
					@bord[i][j].get_case
				end
				print "|"
			end
			print "\n"
			j = 0
		end
		puts "-------------------------------"
		return @bord
	end
	def show_board_empty
		puts "-------------------------------"
		for i in (0..2)
			print "|"
			for j in (0..2)
				@bord[i][j].get_case
				print "|"
			end
			print "\n"
			j = 0
		end
		puts "-------------------------------"
		return @bord
	end
end