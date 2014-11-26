class Consulta < ActiveRecord::Base
  belongs_to :user
  belongs_to :publicacion
end
