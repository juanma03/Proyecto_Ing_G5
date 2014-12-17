class RegistrationsController < Devise::RegistrationsController

	def destroy
		p params
	    if resource.eliminar(params[:current_password])
		    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
		    set_flash_message :notice, :destroyed if is_navigational_format?
		    respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
		else
			render "devise/registrations/edit"
		end
 	end

end