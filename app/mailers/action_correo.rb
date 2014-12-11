class ActionCorreo < ActionMailer::Base
  default from: "bestnidweb@gmail.com"

  def bienvenido_email(user)
    @user=user
    @url='http://bestinidweb.herokuapp.com'
    mail(to: @user.email, subject: '')
  end

  def winner_email(prod)
    @prod=prod
    @winner=User.find(prod.winner_id)
    @owner= prod.user
    @url='http://bestinidweb.herokuapp.com'
    mail1 = mail(to: @winner.email, subject: 'Tu oferta ha sido elegida ganadora')
    mail1.deliver
    mail2 = mail(to: @owner.email,
         subject: 'Haz elegido un ganador para tu publicacion',
         template_path: 'action_correo',
         template_name: 'owner_email')
    mail2.deliver
  end


end
