class RegistrationsController < Devise::RegistrationsController

	def delete
	    if resource.eliminar(params[:current_password])
		    resource.destroy
		else
			render "devise/registrations/edit"
		end
 	end

end