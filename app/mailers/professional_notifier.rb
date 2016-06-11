class ProfessionalNotifier < ApplicationMailer

	def send_signup_email(professional)
		@professional = professional
	    mail( :to => professional.user.email,
	    :subject => 'Bem-Vindo!')
	end
	handle_asynchronously :send_signup_email

	def send_acquisition_email(acquisition)
	    @professional = acquisition.service.professional
	    @user = acquisition.user
	    @service = acquisition.service
	    @acquisition = acquisition
	    mail( :to => acquisition.service.professional.user.email,
	    :subject => 'Compra de Atividade')		
	end
	handle_asynchronously :send_acquisition_email

	def send_service_create_email(service)
	    @professional = service.professional
	    @service = service
	    mail( :to => service.professional.user.email,
	    :subject => 'Atividade Registrada')		
	end
	handle_asynchronously :send_service_create_email

	def send_edit_service_email(edit_service)
	    @professional = service.professional
	    @service = service
	    mail( :to => service.professional.user.email,
	    :subject => 'Atividade Registrada')		
	end
	handle_asynchronously :send_edit_service_email

end
