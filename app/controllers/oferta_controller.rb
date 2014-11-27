class OfertaController < ApplicationController
	
	def create
		@prod= Publicacion.find(params[:publicacion_id])
		@necesidad= @prod.oferta.create!(oferta_params)
		redirect_to @prod
	end

	private
	def oferta_params
	  params.require(:ofertum).permit(:necesidad,  :monto, :publicacion_id, :user_id)
	end
end
