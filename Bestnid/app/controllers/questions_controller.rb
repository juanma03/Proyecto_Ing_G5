class QuestionsController < ApplicationController
	def create
		@prod= Publication.find(params[:publication_id])
		@pregunta= @prod.questions.create(consulta_params)
		redirect_to @prod
	end

	def edit
		@prod = Publication.find(consulta_params[:publication_id])
	    @question = @prod.questions.find(consulta_params[:id])
	    @prod.save
    	@question.save
    	redirect_to @prod
	end

	def update
		@prod = Publication.find(params[:publication_id])
    	@question = @prod.questions.find(params[:id])
    	@question.update_attributes(update_params)
    	redirect_to @prod
	end

	private
	def consulta_params
	  params.require(:question).permit(:question, :publication_id, :user_id, :answer)
	end

	def update_params
		params.require(:question).permit(:answer, :answer_date)
	end

end
