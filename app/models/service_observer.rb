class ServiceObserver < ActiveRecord::Observer
  
  def after_create(service)
  	ProfessionalNotifier.send_service_create_email(service).deliver_later
  	AdminNotifier.send_service_create_email(service).deliver_later
  end

end