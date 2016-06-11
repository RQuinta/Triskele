class AdminNotifier < ApplicationMailer

  	def send_acquisition_email(acquisition)
  		@acquisition = acquisition
  		@professional = acquisition.service.professional
  		@user = acquisition.user
  		@service = acquisition.service
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Compra de Atividade' )
  	end

  	def send_acquisition_update_email(acquisition)
  		@acquisition = acquisition
  		@professional = acquisition.service.professional
  		@user = acquisition.user
  		@service = acquisition.service
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Novo comentário em Atividade' )
  	end

  	def send_appointment_email(appointment)
  		@appointment = appointment
  		@professional = appointment.service.professional
  		@user = appointment.user
  		@service = appointment.service
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Nova solicitação de Pré-Agendamento de Atividade' )
  	end

  	def send_professional_signup_email(professional)
		@professional = professional
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Novo profissional cadastrado')
	end

	def send_user_signup_email(user)
	    @user = user
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Novo usuário cadastrado' )
  	end

  	def send_service_create_email(service)
	    @professional = service.professional
	    @service = service
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Nova Atividade registrada' )
  	end

  	def send_edit_service_email(edit_service)
	    @service = edit_service.service
	    @professional = edit_service.service.professional
	    @edit_service = edit_service
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Solicitação de Edicão de Atividade' )
  	end

  	def send_doubts_email(doubts)
	    @doubts = doubts
	    mail( :to => 'meajuda@triskele.me',
	    :subject => 'Nova Dúvida' )
  	end

end
