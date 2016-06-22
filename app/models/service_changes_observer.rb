class ServiceChangesObserver < ActiveRecord::Observer
  
  def after_create(service_change)
  	AdminNotifier.send_edit_service_email(service_change).deliver_later
  end

end