class Nodo
	attr_accessor :value, :next

	def initialize (valor, siguiente)
		@value = valor
		@next = siguiente
	end

	def initialize (valor)
		@value = valor
		@next = nil
	end
end