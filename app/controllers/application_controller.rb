class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    # Parametros para formularios de Devise.
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit( :nombre , :email , :tipo, :habilitado , :password , :password_confirmation )
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit( :nombre , :email, :tipo, :habilitado, :password , :password_confirmation , :current_password )
    end
  end
end