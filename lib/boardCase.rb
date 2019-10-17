
class BoardCase
	attr_accessor :nom_case, :symbole
	def initialize(nom_case, symbole)
		@nom_case = nom_case
		@symbole = symbole
	end
	def get_case
		print  " [  #{@symbole}  ] "
	end
	def get_name
		return @nom_case
	end
	def get_symbol
		return @symbole
	end
	def set_symbole(nouveau_symbole)
		@symbole = nouveau_symbole
		return @symbole
	end
end