class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :colocar_idioma
   
  def colocar_idioma
    I18n.locale = request.headers["Accept-Language"].scan(/^[a-z]{2}/).first || I18n.default_locale
  end

  def validar_autenticacion
    unless session[:usuario_actual]
      flash[:mensaje] = t("inicio_sin_autenticacion")
      redirect_to controller: :inicio, action: :formulario
      return 
    end
  end

end
