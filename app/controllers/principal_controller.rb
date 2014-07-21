class PrincipalController < ApplicationController
  layout "privado"

  before_action :validar_autenticacion

  def ver_usuarios
    @usuarios = Usuario.all
  end
end
