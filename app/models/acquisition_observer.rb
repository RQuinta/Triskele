class AcquisitionObserver < ActiveRecord::Observer
  
  def after_create(acquisition)
  	UserNotifier.send_acquisition_email(acquisition).deliver
  	ProfessionalNotifier.send_acquisition_email(acquisition).deliver
  	AdminNotifier.send_acquisition_email(acquisition).deliver
  	ServiceRemainingUpdater.new(acquisition.service).update_slots
  end

  def after_update(acquisition)
  	AdminNotifier.send_acquisition_update_email(acquisition).deliver
  	ServiceRatingUpdater.new(acquisition.service).update_rating
  end

end