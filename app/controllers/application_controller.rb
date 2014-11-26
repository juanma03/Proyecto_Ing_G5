class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_filter :configure_permitted_parameters, if: :devise_controller?

	#Agregado por nosotros
  	protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nombre, :apellido, :localidad, :telefono, :mayor_18, :direccion, :email, :password, :titular_tarjeta, :numero_tarjeta, :vencimiento_tarjeta) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:nombre, :apellido, :localidad, :telefono, :mayor_18, :direccion, :email, :password, :titular_tarjeta, :numero_tarjeta, :vencimiento_tarjeta) }
        end

end
