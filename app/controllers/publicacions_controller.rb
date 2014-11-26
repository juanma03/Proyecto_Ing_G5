class PublicacionsController < ApplicationController

  def new
    @publicacion = Publicacion.new
  end

  def create
    @publicacion = Publicacion.new()
    @publicacion.user_id = current_user.id
    @publicacion.nombre= publicacion_params[:nombre]
    @publicacion.descripcion= publicacion_params[:descripcion]
    @publicacion.imagen= publicacion_params[:imagen]
    @publicacion.categoria= publicacion_params[:categoria]
    @publicacion.vencimiento= Time.now+ publicacion_params[:vencimiento].to_i.days
    #Falta guardar Vencimiento
    
    if @publicacion.save
      redirect_to :action => "show", :id => @publicacion.id
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def index
  	if params[:search]
      	@p = Publicacion.search(params[:search]).order("created_at desc")
        if @p.blank?
          render 'no_resultados'
        end
    else
    	@p = Publicacion.all.order("created_at desc")
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

  def mis_publicacions
    if current_user
      @p = current_user.publicacions
      if @p.blank?
        render 'no_producto'
      end
    else
      redirect_to new_user_session_path, notice: 'No has iniciado Sesion'
    end
  end
 
private
  def publicacion_params
    params.require(:publicacion).permit(:nombre, :descripcion, :imagen, :categoria, :vencimiento)
  end
end