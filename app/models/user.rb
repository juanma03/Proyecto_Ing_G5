class User < ActiveRecord::Base
  has_many :publications, dependent: :destroy
  has_many :questions
  has_many :offers, dependent: :destroy

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  #Contraseña
  validates_presence_of :password, :on => :create

  #Localidad y Direccion
  validates_format_of :city, :address, :with => /\A[a-zA-Z' '0-9]{2,15}\Z/

  #Nombre y Apellido
  validates_format_of :name, :last_name, :with => /\A[a-zA-Z' ']{2,25}\Z/

  #Telefono
  validates_format_of :phone, :with => /\A[0-9+]{6,21}\Z/

  #Mail
  validates :email, email_format: { message: "No es una direccion de correo valida" }

  #Mayor de 18
  validates :adult, :acceptance => {:accept => true}

  #Tarjeta
  validates_format_of :credit_card_number, :with => /\A[0-9]{16}\Z/, :unless => 'credit_card_number.blank?'
  validates_uniqueness_of :credit_card_number, :unless => 'credit_card_owner.blank?'
  validates_format_of :credit_card_owner, :with => /\A[a-zA-Z' ']{2,25}\Z/, :unless => 'credit_card_owner.blank?'

end
