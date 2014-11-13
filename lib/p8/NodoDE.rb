require_relative "Nodo"

class NodoDE < Nodo
	attr_accessor :prev

	def initialize (valor, siguiente, anterior)
		super(valor, siguiente)
		@prev = anterior
	end

	def initialize (valor)
		super (valor)
	end
end