class ServiceObserver < ActiveRecord::Observer
  
  def after_create(service)
  	ServiceNotifier.send_signup_email(service).deliver
  end

end