class Publicacion < ActiveRecord::Base
  belongs_to :usuario
  has_many :consultas
  has_many :ofertas

  scope :recientes, -> { order("created_at desc")}
  
  scope :a_z, -> { order("nombre")}
  scope :z_a, -> { order("nombre desc")}

  scope :venc_prox, -> { order("vencimiento")}
  scope :venc_lejano, -> { order("vencimiento desc")}


  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("lower(nombre) like ?", "%#{query}%".downcase)
  end

end
