class AppointmentObserver < ActiveRecord::Observer
  
  def after_create(appointment)
  	UserNotifier.send_appointment_email(appointment).deliver
  	AdminNotifier.send_appointment_email(appointment).deliver
  end

end