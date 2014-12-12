class OffersController < ApplicationController
	
  def caca
      @prod= Publication.find(params[:publication_id])
		  @necesidad= @prod.offers.build(oferta_params)
      redirect_to @prod
	end

	private
	def oferta_params
	  params.require(:offer).permit(:necessity,  :amount, :publication_id, :user_id, :security_code)
  end


end
