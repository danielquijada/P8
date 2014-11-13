require_relative "Pregunta.rb"

class PreguntaVF < Pregunta
	def initialize (pregunta, respuesta)
		# @question = pregunta
		# @solucion = respuesta
		respuestas = ["Verdadero", "Falso"]
		if respuesta then
			a = 1
		else
			a = 2
		end
		super(pregunta, a, respuestas)
	end
end