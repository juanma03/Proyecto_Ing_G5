class Consultum < ActiveRecord::Base
  belongs_to :user
  belongs_to :publicacion
end
