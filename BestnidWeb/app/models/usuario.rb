class Usuario < ActiveRecord::Base
  has_many :publicacions
  has_many :ofertas
  has_many :consultas
end
