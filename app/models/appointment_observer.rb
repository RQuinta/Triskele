class AppointmentObserver < ActiveRecord::Observer
  
  def after_create(appointment)
  	AppointmentNotifier.send_signup_email(appointment).deliver
  end

end