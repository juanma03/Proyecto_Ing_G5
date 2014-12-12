class OffersController < ApplicationController
	
  def new
      @prod= Publication.find(params[:publication_id])
		  @necesidad= @prod.offers.create(oferta_params)
      redirect_to :back
	end

	private
	def oferta_params
	  params.require(:offer).permit(:necessity,  :amount, :publication_id, :user_id)
  end


end
