class DimeController < ApplicationController
  def hola
    @variable1 = "Hola Mundo"
  end

  def chao
    @variable1 = t(".adios") #ejemplo accediendo desde el controlador
    @nombre1 = "Maria"
    @nombre2 = "Luis"
  end
end
