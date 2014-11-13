class Pregunta 
  def initialize(pregunta, respuesta, *opciones)
    @question = pregunta
    @respuestas = opciones
    @respuestas = @respuestas.flatten
    @solucion = respuesta
  end
  
  # Getter de la solucion correcta, devuelve un entero que es el indice de la respuesta correcta, indexado desde 1 hasta 4 (aunque en el programa se indexen desde 0)
  def correcta 
    @solucion
  end
  
  # Getter para la pregunta.
  def pregunta
    @question
  end
  
  # Getter para cada opción (indexados desde 1).
  def opcion(i)
    @respuestas.at(i - 1)
  end
  
  # Pregunta y evalua la respuesta
  def preguntar
    printPregunta
    STDOUT.flush
    evaluar (gets.chomp)
  end
  
  # A string
  def to_s
    out = ""
    out.concat(@question)
    i = 1
    @respuestas.each do |resp|
      out.concat ("\n #{i}) #{resp}")
      i = i + 1
    end
    out 
  end

   # Muestra la pregunta y las opciones por pantalla
  def printPregunta
    puts self
  end
  
  # Evalua la respuesta
  def evaluar (respuesta)
    if respuesta==@solucion
      puts "Correcto!!"
      return TRUE
    else
      puts "Respuesta incorrecta :("
      return FALSE
    end
  end
end