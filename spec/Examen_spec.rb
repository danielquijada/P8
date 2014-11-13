require 'spec_helper'
require 'P7'

describe Examen do

   before :each do
      @respuestas1 = [ " #<Xyz:0xa000208", "nil", "0", "Ninguna de las anteriores" ]
      @pregunta1 = Pregunta.new("Cual es la salida del siguiente codigo Ruby? \n class Xyz \n   def pots \n     @nice \n   end \n end \n\n xyz = Xyz.new \n p xyz.pots", 2, @respuestas1)
      @nodo1 = NodoDE.new(@pregunta1)

      @pregunta2 = PreguntaVF.new("La siguiente definicion de un hash en Ruby es valida: \n hash_raro = { \n   [1, 2, 3] => Object.new(),\n   Hash.new => :toto \n }", FALSE)
      @nodo2 = NodoDE.new(@pregunta2)

      @respuestas3 = [ "1", "bob", "HEY!", "Ninguna de las anteriores" ]
      @pregunta3 = Pregunta.new("Cual es la salida del siguiente codigo Ruby? \n class Array \n   def say_hi \n     \"HEY!\" \n   end \n end \n\n p [1, \"bob\"].say_hi", 3, @respuestas3)
      @nodo3 = NodoDE.new(@pregunta3)

      @respuestas4 = [ "Una instancia de la clase Class", "Una constante", "Un objeto", "Ninguna de las anteriores" ]
      @pregunta4 = Pregunta.new("Cual es el tipo del objeto en el siguiente codigo Ruby? \n class Objeto \n end", 4, @respuestas4)
      @nodo4 = NodoDE.new(@pregunta4)

      @pregunta5 = PreguntaVF.new("Es apropiado que una clase Tablero herede de una clase Juego?" , FALSE)
      @nodo5 = NodoDE.new(@pregunta5)

      @nodos = [@nodo1, @nodo2, @nodo3, @nodo4, @nodo5]
      @examen = Examen.new()

      @nodos.each do |nodo|
         @examen.push(nodo)
      end
   end

   describe "# Almacenamiento de datos" do
      it "todas los nodos se almacenan correctamente" do
         @nodos.each do |nod|
            @examen.pop.should eq(nod)
         end
      end

      it "almacena datos con push" do
         pregunta6 = PreguntaVF.new("Dani es nego?" , TRUE)
         nodo6 = NodoDE.new(pregunta6)

         @examen.push(nodo6)

         @examen.tail.should eq(nodo6)
      end
   end

   describe "# Recuperacion de datos" do
      it "el metodo get funciona correctamente" do
         i = 1
         @nodos.each do |nod|
            @examen.get(i).should eq(nod)  
            i = i + 1
         end
      end

      it "devuelve nil al pedir un dato fuera de rango" do
         @examen.get(6).should eq(nil)
      end

      it "devuelve el ultimo dato correctamente con el metodo tail" do
         @examen.tail.should eq(@nodo5)
      end
   end

   describe "# Metodos" do
      it "responde al metodo push" do
         expect(@examen.respond_to? :push)
      end

      it "responde al metodo pop" do
         expect(@examen.respond_to? :pop)
      end

      it "responde al metodo get" do
         expect(@examen.respond_to? :get)
      end

      it "responde al metodo examinar" do
         expect(@examen.respond_to? :examinar)
      end
   end

   describe "# Herencia" do
      it " funciona correctamente con Examen < ListaDoblementeEnlazada < ListaEnlazada" do
         @examen.should be_a ListaEnlazada
      end
      
      it "funciona correctamente con PreguntaVF < Pregunta" do
         @pregunta5.should be_a Pregunta
      end

      it "@pregunta5 es una instancia de Pregunta" do
         @pregunta5.should be_an_instance_of PreguntaVF
      end

      it "@examen es una instancia de Examen" do
         @examen.should be_an_instance_of Examen
      end
   end
end

