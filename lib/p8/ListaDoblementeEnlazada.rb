require_relative "ListaEnlazada"

class ListaDoblementeEnlazada < ListaEnlazada
	def push (nodo)
		if (nodo != nil)
			nodo.next = nil
		end
		@tail.next = nodo
		nodo.prev = @tail
		@tail = nodo
		if (@head.value == nil)
			@head = nodo
		end
	end

	def pop
		nodo = super
		if @head != nil then
			@head.prev = nil
		end
		return nodo
	end
end
