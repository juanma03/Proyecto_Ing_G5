class Question < ActiveRecord::Base
	belongs_to :user
	belongs_to :publication

	validates_presence_of :question
	#Validar respuesta
end
