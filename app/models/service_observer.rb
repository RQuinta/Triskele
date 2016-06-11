class ServiceObserver < ActiveRecord::Observer
  
  def after_create(service)
  	ProfessionalNotifier.send_service_create_email(service).deliver
  	AdminNotifier.send_service_create_email(service).deliver
  end

end