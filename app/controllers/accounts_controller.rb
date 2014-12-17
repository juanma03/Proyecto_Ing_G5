class AccountController < ApplicationController
  def delete
    if request.post?
      user= User.find_by_email(current_user.email)
      if (user.valid_password?(params[:password]))
        user.destroy
        redirect_to root_path, notice: "Usuario eliminado correctamente"
      else
        redirect_to :back, alert: "contrasenia incorrecta"
      end
    end
  end
end
