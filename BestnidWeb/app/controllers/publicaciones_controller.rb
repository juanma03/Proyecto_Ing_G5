class PublicacionesController < ApplicationController


  def index
  	if params[:search]
      	@p = Publicacion.search(params[:search]).order("created_at desc")
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

  	if @parametro == 'AZ'
  		@p = Publicacion.a_z
  	elsif @parametro == 'Recientes'
  		@p = Publicacion.recientes
  			elsif @parametro == 'ZA'
  				@p = Publicacion.z_a
  				elsif @parametro == 'Prox_venc'
  					@p = Publicacion.venc_prox
  					elsif @parametro == 'Lej_venc'
  						@p = Publicacion.venc_lejano
  	end
end
end