class Oferta < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :publicacion
end
