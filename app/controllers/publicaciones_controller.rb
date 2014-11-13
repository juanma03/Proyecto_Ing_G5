class PublicacionesController < ApplicationController


  def index
  	if params[:search]
      	@p = Publicacion.search(params[:search]).order("created_at desc")
        if @p.blank?
          render 'no_resultados'
        end
    else
    	@p = Publicacion.all
    end
  end
  	
  def show
    @prod = Publicacion.find(params[:id])
  end

  def categorias
    @cat = Publicacion.where("categoria LIKE :categoria", {:categoria => params[:string]})
  end

  def filtro
    @parametro = params[:string]

    case @parametro
      when 'AZ'
        @p = Publicacion.a_z
      when 'ZA'
        @p = Publicacion.z_a
      when 'Recientes'
        @p = Publicacion.recientes
      when 'Venc_prox'
        @p = Publicacion.venc_prox
      when 'Venc_lej'
        @p = Publicacion.venc_lejano
      else
        redirect_to :back
    end
  end
end