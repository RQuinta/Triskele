class AcquisitionObserver < ActiveRecord::Observer
  
  def after_create(acquisition)
  	ServiceRemainingUpdater.new(acquisition.service).update_slots
  end

  def after_update(acquisition)
  	ServiceRatingUpdater.new(acquisition.service).update_rating
  end

end