class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	before_filter :configure_permitted_parameters, if: :devise_controller?

	#Agregado por nosotros
  	protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :last_name, :city, :phone, :adult, :address, :email, :password, :credit_card_owner, :credit_card_number, :credit_card_expiration_date, :password_confirmation) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :last_name, :city, :phone, :adult, :address, :email, :password, :credit_card_owner, :credit_card_number, :credit_card_expiration_date, :current_password, :password_confirmation) }
        end
end
