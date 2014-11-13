require 'spec_helper'
require 'P7'

describe PreguntaVF do
   before :each do
      @preg = "Es apropiado que una clase Tablero herede de una clase Juego?"
      @resp = FALSE
      @pregunta = PreguntaVF.new(@preg, @resp)
   end
   
   describe "# Constructor de pregunta" do
      it "guarda correctamente la pregunta" do
         @pregunta.pregunta.should eq(@preg)
      end
      it "almacena correctamente la respuesta correcta" do
         if @resp then
            a = 1
         else
            a = 2
         end
         @pregunta.correcta.should eq(a)
      end
   end
   
   describe "# Evaluador" do
      it "evalua correctamente" do
         @pregunta.evaluar(@resp).should eq(FALSE)
      end
   end
end