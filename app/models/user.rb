class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :publicacions
  has_many :ofertas
  has_many :consultas

  validates_format_of :localidad, :direccion, :with => /\A[a-zA-Z' '0-9]{2,15}\Z/

  #Nombre
  validates_format_of :nombre, :apellido, :titular_tarjeta, :with => /\A[a-zA-Z]{2,25}\Z/

  #Telefono
  validates_format_of :telefono, :with => /\A[0-9+]{6,21}\Z/

  #Mail
  validates :email, email_format: { message: "No es una direccion de correo valida" }

  #Mayor de 18
  validates :mayor_18, :acceptance => {:accept => true}

  #Numero de Tarjeta
  validates_format_of :numero_tarjeta, :with => /\A[0-9]{16}\Z/
  validates_uniqueness_of :numero_tarjeta

  #Vencimiento Tarjeta

end
