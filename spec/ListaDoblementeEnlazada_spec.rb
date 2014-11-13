require 'spec_helper'
require 'P7'

describe ListaDoblementeEnlazada do
   before :each do
      @lista = ListaDoblementeEnlazada.new()
      
      @nodo1 = NodoDE.new(nil)
      @lista.push (@nodo1)
      
      @nodo2 = NodoDE.new(nil)
      @lista.push (@nodo2)
   end
   
   describe "# Enlaces" do
      it "conectan al primero con el segundo" do
         @lista.head.next = @nodo2
      end
      it "conectan al segundo con el primero" do
         @lista.tail.prev = @nodo1
      end
   end

   describe "# Getters" do
      it "responde al metodo cabeza" do
         expect(@lista.respond_to? :head) 
      end
      it "responde al metodo cola" do
         expect(@lista.respond_to? :tail) 
      end
   end
end
