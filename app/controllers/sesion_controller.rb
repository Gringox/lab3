class SesionController < ApplicationController

  def iniciar
    reset_session #al iniciar sesion siempre se deberia borrar lo que habia

    login = params[:usuario][:nombre_usuario]
    clave = params[:usuario][:contrasena]

    usuario = Usuario.where(nombre_usuario: login, contrasena: clave).take
    #en la bd tenemos a luis:123456, maria:321321

    if usuario
      session[:usuario_actual] = usuario.nombre
      redirect_to controller: :principal, action: :ver_usuarios
      return
    else
      flash[:mensaje] = t(".mensaje_inicio_invalido")
      redirect_to controller: :inicio, action: :formulario
      return 
    end
  end

  def cerrar
    reset_session
    redirect_to controller: :inicio, action: :formulario  
    return
  end
end
