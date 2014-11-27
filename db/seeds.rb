# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create(apellido:'Maidana', nombre: 'Carlos', email: 'cm@b.com',telefono: '2214257855', direccion: 'Calle falsa 123')
#User.create(apellido:'Perez' ,nombre: 'Catalina' ,email: 'cp@b.com' ,telefono: '2214252255' ,direccion: 'Calle falsa 124')
#User.create(apellido:'Ramirez' ,nombre: 'Sergio' ,email: 'sr@b.com' ,telefono: '2214258855' ,direccion: 'Calle falsa 125')
#User.create(apellido:'Lamas' ,nombre: 'Ramiro' ,email: 'rl@b.com' ,telefono: '2214257821' ,direccion: 'Calle falsa 126')
#User.create(apellido:'Petrucci' ,nombre: 'Mariano' ,email: 'mp@b.com' ,telefono: '2214276855' ,direccion: 'Calle falsa 127')
#User.create(apellido:'Rimano' ,nombre: 'Mabel' ,email: 'mr@b.com' ,telefono: '2214257856' ,direccion: 'Calle falsa 128')
#User.create(apellido:'Vegas' ,nombre: 'Roberto' ,email: 'rv@b.com' ,telefono: '2214257895' ,direccion: 'Calle falsa 129')
#puts 'Creo los Users'add_column :users, :titular_tarjeta, :string

User.create(apellido:'Lopez', nombre: 'Axel',  email: 'csraxll@gmail.com', telefono: '2214257855', direccion: 'Calle falsa 123', password: '12345678', password_confirmation: '12345678', numero_tarjeta: '1234567890123456', titular_tarjeta: 'PadreDeAxel', vencimiento_tarjeta: Time.now + 2.years, mayor_18: true, localidad: 'La Plata')
#User.create(apellido:'Perez',   nombre: 'Catalina',email: 'cp@b.com', telefono: '2214252255', direccion: 'Calle falsa 124')
#User.create(apellido:'Ramirez', nombre: 'Sergio',  email: 'sr@b.com', telefono: '2214258855', direccion: 'Calle falsa 125')
puts 'Creo los Usuarios'

Publicacion.create(user_id: 1 ,categoria:'Indumentaria',imagen:'https://dl.dropboxusercontent.com/u/97561407/guantes.jpg' ,nombre: 'Guantes de Acero', descripcion: 'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa' ,vencimiento: Time.now+15.days)
Publicacion.create(user_id: 2 ,categoria:'Vehiculos',imagen:'https://dl.dropboxusercontent.com/u/97561407/llama.jpg',nombre: 'Llama', descripcion: 'Llama adulta oriunda de Tilcara. Es mansita', vencimiento: Time.now+15.days)
Publicacion.create(user_id: 1 ,categoria:'Muebles',imagen:'https://dl.dropboxusercontent.com/u/97561407/marco.jpg',nombre: 'Espejo', descripcion: 'Espejo sin marco. Medidas: 0.8m x 1.2m', vencimiento: Time.now+15.days)
Publicacion.create(user_id: 3 ,categoria:'Otros',imagen:'https://dl.dropboxusercontent.com/u/97561407/kriptonita.jpg',nombre: 'Kriptonita', descripcion: '200 gramos de Kriptonita', vencimiento: Time.now+15.days)
Publicacion.create(user_id: 2 ,categoria:'Comestibles',imagen:'https://dl.dropboxusercontent.com/u/97561407/vinagre.jpg',nombre: 'Aceite y Vinagre', descripcion: '200ml de aceite y 300ml de vinagre. No incluye fascos', vencimiento: Time.now+15.days)
puts 'Creo las Publicaciones'


Ofertum.create(user_id: 5, publicacion_id: 2 ,necesidad: 'Siempre me gustaron los animales porque vivo solo y son buena compania. Una llama es justo lo que necesito.' )
Ofertum.create(user_id: 4, publicacion_id: 3 ,necesidad: 'Siempre quise ser vampiro. Con este espejo no me convertiria en vampiro pero me ayudaria a sentirme uno.' )
Ofertum.create(user_id: 6, publicacion_id: 4 ,necesidad: 'Odio a superman y si algun dia lo llego a cruzar este producto me vendria al pelo.' )
Ofertum.create(user_id: 7, publicacion_id: 1 ,necesidad: 'Soy carpintero y la necesito para cuando manejo la sierra.' )
Ofertum.create(user_id: 4, publicacion_id: 1 ,necesidad: 'Soy carnicero y lamentablemente perdi un dedo trabajando. Me gustaria comprar el producto para que no me vuelva a ocurrir' )
puts 'Creo las Necesidades'

Consultum.create(user_id: 4, publicacion_id: 1, pregunta: 'Consulta', respuesta: 'Respuesta' )
Consultum.create(user_id: 3, publicacion_id: 2, pregunta: 'Consulta', respuesta: 'Respuesta' )
Consultum.create(user_id: 4, publicacion_id: 3, pregunta: 'Consulta', respuesta: 'Respuesta' )
Consultum.create(user_id: 3, publicacion_id: 1, pregunta: 'Consulta', respuesta: 'Respuesta' )
puts 'Creo las Consultas'