class ConsultaController < ApplicationController

	def create
		@prod= Publicacion.find(params[:publicacion_id])
		@pregunta= @prod.consulta.create!(consulta_params)
		redirect_to @prod
	end

	private
	def consulta_params
	  params.require(:consultum).permit(:pregunta, :publicacion_id, :user_id)
	end
end
