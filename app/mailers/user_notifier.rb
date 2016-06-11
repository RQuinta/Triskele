class UserNotifier < ApplicationMailer

	  def send_signup_email(user)
	    @user = user
	    mail( :to => user.email,
	    :subject => 'Bem-Vindo!' )
  	end
    handle_asynchronously :send_signup_email

  	def send_acquisition_email(acquisition)
  		@acquisition = acquisition
	    mail( :to => acquisition.user.email,
	    :subject => 'Aventura Confirmada!' )
  	end
    handle_asynchronously :send_acquisition_email

  	def send_appointment_email(appointment)
  		@appointment = appointment
  		@user = appointment.user
  		@service = appointment.service
  		@professional = appointment.service.professional
	    mail( :to => appointment.user.email,
	    :subject => 'Retorno sobre o seu pedido de Pré-Agendamento' )
  	end
    handle_asynchronously :send_appointment_email


end
