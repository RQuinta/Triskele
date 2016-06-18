class AppointmentObserver < ActiveRecord::Observer
  
  def after_create(appointment)
  	UserNotifier.send_appointment_email(appointment).deliver_later
  	AdminNotifier.send_appointment_email(appointment).deliver_later
  end

end