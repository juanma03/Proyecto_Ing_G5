class OfertasController < ApplicationController

def new
   @publicacion = Publicacion.find(params[:publicacion_id]);
   @oferta = @publicacion.ofertas.build
end

def create
   @necesidad = params[:oferta][:necesidad];
   @publicacion = Publicacion.find(params[:publicacion_id]);
   @oferta = Oferta.new({
      :necesidad => @necesidad,
      :publicacion => @publicacion
   });
   if @oferta.save()
      redirect_to @publicacion, :notice => "La oferta se ha efectuado";
   else
      render "new";
   end
end

private
  def oferta_params
    params.require(:oferta).permit(:necesidad, :monto, :publicacion_id)
  end
end
