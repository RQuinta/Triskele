class UserNotifier < ApplicationMailer

	def send_signup_email(user)
	    @user = user
	    mail( :to => user.email,
	    :subject => 'Registro' )
  	end

  	def send_acquisition_email(acquisition)
  		@acquisition = acquisition
	    mail( :to => acquisition.user.email,
	    :subject => 'Email de aquisição de servico' )
  	end


end
