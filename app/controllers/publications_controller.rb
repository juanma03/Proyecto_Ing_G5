class PublicationsController < ApplicationController
	def new
    @publicacion = Publication.new
  end

  def create
    @publicacion = Publication.new()
    @publicacion.user_id = current_user.id
    @publicacion.name= publicacion_params[:name]
    @publicacion.description= publicacion_params[:description]
    @publicacion.image= publicacion_params[:image]
    @publicacion.category= publicacion_params[:category]
    @publicacion.expiration= Time.now+ publicacion_params[:expiration].to_i.days
    if @publicacion.save
      redirect_to :action => "show", :id => @publicacion.id
    else
      render "new"
    end
  end

  def index
  	if params[:search]
      	@p = Publication.activas.search(params[:search]).order("created_at desc")
        if @p.blank?
          render 'no_resultados'
        end
    else
    	@p = Publication.activas.order("created_at desc")
    end
  end
  	
  def show
    @prod = Publication.find(params[:id])
    if (current_user.nil? == false)
      @nooferte = @prod.offers.where("user_id = ?", current_user.id).blank?
      @mioferta= @prod.offers.where("user_id = ?", current_user.id)
    end
  end
  
  def categorias
    @cat = Publication.activas.where("category LIKE :categoria", {:categoria => params[:string]})
  end

  def filtro
    @parametro = params[:string]

    case @parametro
      when 'AZ'
        @p = Publication.activas.a_z
      when 'ZA'
        @p = Publication.activas.z_a
      when 'Recientes'
        @p = Publication.activas.recientes
      when 'Venc_prox'
        @p = Publication.activas.venc_prox
      when 'Venc_lej'
        @p = Publication.activas.venc_lejano
      else
        redirect_to :back
    end
  end

  def mis_publicacions
    if current_user
      @p = current_user.publications
      if @p.blank?
        render 'no_resultados'
      end
    else
      redirect_to new_user_session_path, notice: 'No has iniciado Sesion'
    end
  end

  def elegir_ganador
    @prod = Publication.find(params[:publication_id])
    @prod.finished = true
    @oferta = Offer.find(params[:ganador])
    @prod.winner_id = @oferta.user_id
    @prod.terminated_date = Time.now
    @prod.save
    ActionCorreo.winner_email(@prod)
    redirect_to :back
  end

private
  def publicacion_params
    params.require(:publication).permit(:name, :description, :image, :category, :expiration)
  end
end