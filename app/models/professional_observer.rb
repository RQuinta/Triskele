class ProfessionalObserver < ActiveRecord::Observer
  
  def after_create(professional)
  	ProfessionalNotifier.send_signup_email(professional).deliver
  	AdminNotifier.send_professional_signup_email(professional).deliver
  end

end