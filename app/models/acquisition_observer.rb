class AcquisitionObserver < ActiveRecord::Observer
  
  def after_create(acquisition)
  	UserNotifier.send_acquisition_email(acquisition).deliver
  	ServiceRemainingUpdater.new(acquisition.service).update_slots
  end

  def after_update(acquisition)
  	ServiceRatingUpdater.new(acquisition.service).update_rating
  end

end