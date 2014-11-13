require_relative "NodoDE"

class ListaEnlazada
	attr_accessor :head, :tail

	def initialize
		nodo = NodoDE.new(nil)
		@head = nodo
		@tail = nodo
	end

	def push (nodo)
		if (nodo != nil)
			nodo.next = nil
		end
		@tail.next = nodo
		@tail = nodo
		if (@head.value == nil)
			@head = nodo
		end
	end

	def pop
		nodo = @head
		@head = @head.next
		return nodo
	end

	def get (indice)
		nodo = @head
		i = 1
		while ((nodo != nil) && (nodo.value != nil) && (i < indice))
			nodo = nodo.next
			i = i + 1
		end
		if ((nodo == nil) || (nodo.value == nil))
			return nil
		else
			return nodo
		end
	end
end
