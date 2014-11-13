require_relative "ListaDoblementeEnlazada"

class Examen < ListaDoblementeEnlazada
	def examinar
		puntuacion = 0;
		nodo = @head
		while (nodo != nil)
			if (nodo.value.preguntar)
				puntuacion = puntuacion + 1
			end
			nodo = nodo.next	
		end
	end
end
