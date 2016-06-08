class ProfessionalNotifier < ApplicationMailer

	def send_signup_email(professional)
		@professional = professional
	    mail( :to => professional.user.email,
	    :subject => 'Registro Profissional')
	end

	def send_service_acquisition(acquisition)
	    @professional = acqusition.professional
	    mail( :to => professional.user.email,
	    :subject => 'Registro Profissional')		
	end

end
