# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

User.create(last_name:'Lopez', name: 'Axel',  email: 'csraxll@gmail.com', phone: '2214257855', address: 'Calle falsa 123', password: '12345678', password_confirmation: '12345678', credit_card_number: '1234567890123456', credit_card_owner: 'PadreDeAxel', credit_card_expiration_date: Time.now + 2.years, adult: true, city: 'La Plata',admin: false)
User.create(last_name:'Maica', name: 'Juan',  email: 'juanma.m21@hotmail.com', phone: '2214212354', address: 'Calle falsa 321', password: '87654321', password_confirmation: '87654321', credit_card_number: '2345678900000987', credit_card_owner: 'PadreDeJuanma', credit_card_expiration_date: Time.now + 2.years, adult: true, city: 'La Plata',admin: true)
User.create(last_name:'Fulanito', name: 'Cosme',  email: 'cosmef@hotmail.com', phone: '2214212355', address: 'Calle falsa 322', password: '87654321', password_confirmation: '87654321', credit_card_number: '111111111111112', credit_card_owner: 'Cosme Sr', credit_card_expiration_date: Time.now + 2.years, adult: true, city: 'La Plata',admin: false)
User.create(last_name:'Acunia', name: 'Cesar',  email: 'axl_lp@hotmail.com', phone: '2214212355', address: 'Calle falsa 322', password: '87654321', password_confirmation: '87654321', credit_card_number: '111111111111113', credit_card_owner: 'Cesar Sr', credit_card_expiration_date: Time.now + 2.years, adult: true, city: 'La Plata',admin: false)
User.create(last_name:'Tito', name: 'Rober',  email: 'rober@hotmail.com', phone: '2214212356', address: 'Calle falsa 323', password: '87654321', password_confirmation: '87654321', credit_card_number: '111111111111114', credit_card_owner: 'Rober Sr', credit_card_expiration_date: Time.now + 2.years, adult: true, city: 'La Plata',admin: false)
User.create(last_name:'Landa', name: 'Lalo',  email: 'lalola@hotmail.com', phone: '2214212357', address: 'Calle falsa 324', password: '87654321', password_confirmation: '87654321', credit_card_number: '111111111111115', credit_card_owner: 'Lalo Sr', credit_card_expiration_date: Time.now + 2.years, adult: true, city: 'La Plata',admin: false)
puts 'Creo los Usuarios'

Publication.create(user_id: 1 ,category:'Indumentaria',image:'https://dl.dropboxusercontent.com/u/97561407/guantes.jpg' ,name: 'Guantes de Acero', description: 'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa', expiration: Time.now-15.days, finished: false)
Publication.create(user_id: 1 ,category:'Vehiculos',image:'https://dl.dropboxusercontent.com/u/97561407/llama.jpg',name: 'Llama', description: 'Llama adulta oriunda de Tilcara. Es mansita', expiration: Time.now-20.days, finished: false)
Publication.create(user_id: 1 ,category:'Muebles',image:'https://dl.dropboxusercontent.com/u/97561407/marco.jpg',name: 'Marco', description: 'Marco sin espejo. Medidas: 0.8m x 1.2m', expiration: Time.now+15.days, finished: false)
Publication.create(user_id: 1 ,category:'Otros',image:'https://dl.dropboxusercontent.com/u/97561407/kriptonita.jpg',name: 'Kriptonita', description: '200 gramos de Kriptonita', expiration: Time.now+28.days, finished: false)
Publication.create(user_id: 1 ,category:'Comestibles',image:'https://dl.dropboxusercontent.com/u/97561407/vinagre.jpg',name: 'Aceite y Vinagre', description: '200ml de aceite y 300ml de vinagre. No incluye fascos', expiration: Time.now-15.days, finished: true, terminated_date: Time.now-14.days, winner_id: 2)

Publication.create(user_id: 1 ,category:'Muebles',image:'https://dl.dropboxusercontent.com/u/97561407/silla.jpg',name: 'Silla', description: 'Silla donde se sento Freddie Mercury una vez.', expiration: Time.now + 16.days, finished: false)
Publication.create(user_id: 1 ,category:'Otros',image:'https://dl.dropboxusercontent.com/u/97561407/pad.jpg',name: 'Pad', description: 'Pad para mouse blanco, construido con materiales de primera calidad para que pueda terminar su proyecto o morir, lo que pase primero. Dimensiones 15cmx15cm.', expiration: Time.now+17.days, finished: false)
Publication.create(user_id: 2 ,category:'Electronica',image:'https://dl.dropboxusercontent.com/u/97561407/nokia1100.png',name: 'Nokia 1100', description: 'Telefono inteligente, envia y recibe mensajes, resiste el polvo y hasta reproduce tonos polifonicos. Una carga de bateria de 8hs dura 1 decada.', expiration: Time.now+18.days, finished: false)
Publication.create(user_id: 2 ,category:'Inmuebles',image:'https://dl.dropboxusercontent.com/u/97561407/casa_usher.jpg',name: 'Casa Usher', description: 'Casa donde pasan cosas buenas, no tiene nada que ver con la historia del escritor E.Allan Poe, lo juro sobre el cadaver de mi esposa.', expiration: Time.now-19.days, finished: false)
Publication.create(user_id: 2 ,category:'Muebles',image:'https://dl.dropboxusercontent.com/u/97561407/sarcofago.jpg',name: 'Sarcofago', description: 'Sarcofago donde se guardan los restos de un antiguo emperador egipcio, si, el emperador sigue adentro.', expiration: Time.now-21.days, finished: false)
Publication.create(user_id: 3 ,category:'Electrodomesticos',image:'https://dl.dropboxusercontent.com/u/97561407/lavarropas.jpg',name: 'Lavarropas', description: 'Lavarropas de principio del siglo XX, no tiene un solo uso, a estrenar.', expiration: Time.now+21.days, finished: false)
Publication.create(user_id: 4 ,category:'Muebles',image:'https://dl.dropboxusercontent.com/u/97561407/colchon.jpg',name: 'Colchon', description: 'Colchon de goma-espuma de primera calidad, ergonomico y comodo para disfrutar del descanso. El producto no incluye a la modelo.', expiration: Time.now+22.days, finished: false)
Publication.create(user_id: 4 ,category:'Joyeria',image:'https://dl.dropboxusercontent.com/u/97561407/giratiempo.jpeg',name: 'Giratiempo', description: 'Replica del giratiempo que Dumbledore le regalo a Hermione en la saga de Harry Potter. Por favor no pregunten si funciona.', expiration: Time.now+23.days, finished: false)
Publication.create(user_id: 4 ,category:'Deporte',image:'https://dl.dropboxusercontent.com/u/97561407/protesis.jpg',name: 'Protesis', description: 'Protesis laminada en fibra de carbono, ideal para realizar deporte.', expiration: Time.now+24.days, finished: false)
Publication.create(user_id: 4 ,category:'Electronica',image:'https://dl.dropboxusercontent.com/u/97561407/mark1.jpg',name: 'Mark 1', description: 'Computadora de alto rendimiento IBM Mark 1, perfecta para dejarla realizando calculos complejos mientras uno se va de vacaciones.', expiration: Time.now+25.days, finished: false)
puts 'Creo las Publicaciones'

Offer.create(user_id: 5, publication_id: 2 , amount: 500, necessity: 'Siempre me gustaron los animales porque vivo solo y son buena compania. Una llama es justo lo que necesito.', security_code: '123')
Offer.create(user_id: 4, publication_id: 3 , amount: 80, necessity: 'Siempre quise ser vampiro. Con este espejo no me convertiria en vampiro pero me ayudaria a sentirme uno.', security_code: '123')
Offer.create(user_id: 2, publication_id: 4 , amount: 10000, necessity: 'Odio a superman y si algun dia lo llego a cruzar este producto me vendria al pelo.', security_code: '123')
Offer.create(user_id: 3, publication_id: 1 , amount: 30, necessity: 'Soy carpintero y la necesito para cuando manejo la sierra.', security_code: '123')
Offer.create(user_id: 4, publication_id: 1 , amount: 50, necessity: 'Soy carnicero y lamentablemente perdi un dedo trabajando. Me gustaria comprar el producto para que no me vuelva a ocurrir', security_code: '123')
Offer.create(user_id: 2, publication_id: 5 , amount: 6, necessity: 'Me gustaria tener ese aceite para hacerle una ensalada a los chicos carenciados de Villa La Cava', security_code: '123')
puts 'Creo las Offers'

Question.create(user_id: 4, publication_id: 1, question: 'Consulta', answer: '')
Question.create(user_id: 3, publication_id: 2, question: 'Consulta', answer: '')
Question.create(user_id: 4, publication_id: 3, question: 'Consulta', answer: '')
Question.create(user_id: 3, publication_id: 1, question: 'Consulta', answer: '')
puts 'Creo las Consultas'