require_relative 'boardCase'
require 'colorize'
class Board
	def initialize()
		@bord = [[BoardCase.new("A1", ""), BoardCase.new("A2", ""), BoardCase.new("A3", "")],
				[BoardCase.new("B1",""),BoardCase.new("B2",""), BoardCase.new("B3" ,"")],
				[BoardCase.new("C1",""), BoardCase.new("C2", ""), BoardCase.new("C3","")]]
	end
	def verif_joueur1
		if (@bord[0][0].get_symbol == "X" and @bord[0][1].get_symbol == "X" and @bord[0][2].get_symbol == "X") or
			(@bord[1][0].get_symbol == "X" and @bord[1][1].get_symbol == "X" and @bord[1][2].get_symbol == "X") or
			(@bord[2][0].get_symbol == "X" and @bord[2][1].get_symbol == "X" and @bord[2][2].get_symbol == "X") or
			(@bord[0][0].get_symbol == "X" and @bord[1][1].get_symbol == "X" and @bord[2][2].get_symbol == "X") or
			(@bord[0][2].get_symbol == "X" and @bord[1][1].get_symbol == "X" and @bord[2][0].get_symbol == "X") or
			(@bord[0][0].get_symbol == "X" and @bord[1][0].get_symbol == "X" and @bord[2][0].get_symbol == "X") or
			(@bord[0][1].get_symbol == "X" and @bord[1][1].get_symbol == "X" and @bord[2][1].get_symbol == "X") or
			(@bord[0][2].get_symbol == "X" and @bord[1][2].get_symbol == "X" and @bord[2][2].get_symbol == "X")

			return true
		end
	end
	def verif_joueur2
		if (@bord[0][0].get_symbol == "O" and @bord[0][1].get_symbol == "O" and @bord[0][2].get_symbol == "O") or
			(@bord[1][0].get_symbol == "O" and @bord[1][1].get_symbol == "O" and @bord[1][2].get_symbol == "O") or
			(@bord[2][0].get_symbol == "O" and @bord[2][1].get_symbol == "O" and @bord[2][2].get_symbol == "O") or
			(@bord[0][0].get_symbol == "O" and @bord[1][1].get_symbol == "O" and @bord[2][2].get_symbol == "O") or
			(@bord[0][2].get_symbol == "O" and @bord[1][1].get_symbol == "O" and @bord[2][0].get_symbol == "O") or
			(@bord[0][0].get_symbol == "O" and @bord[1][0].get_symbol == "O" and @bord[2][0].get_symbol == "O") or
			(@bord[0][1].get_symbol == "O" and @bord[1][1].get_symbol == "O" and @bord[2][1].get_symbol == "O") or
			(@bord[0][2].get_symbol == "O" and @bord[1][2].get_symbol == "O" and @bord[2][2].get_symbol == "O")

			return true
		end
	end
	def mettre_x(valeur, joueur)
		system('clear')
		for i in (0..2)
			for j in (0..2)
				if valeur == @bord[i][j].get_name and @bord[i][j].get_symbol == ""
					@bord[i][j].set_symbole(joueur.symbole)
					@bord << @bord[i][j].get_case
				else
					@bord[i][j].get_case
				end
			end
			print "\n"
			j = 0
		end
		return @bord
	end
end