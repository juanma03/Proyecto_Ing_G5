class OffersController < ApplicationController
	
  def create
      @prod= Publication.find(params[:publication_id])
		  @necesidad= @prod.offers.create(oferta_params)
      redirect_to @prod
	end

	private
	def oferta_params
	  params.require(:offer).permit(:necessity,  :amount, :publication_id, :user_id, :security_code)
  end


end
