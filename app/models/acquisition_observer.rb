class AcquisitionObserver < ActiveRecord::Observer
  
  def after_create(acquisition)
    if acquisition.service.event
      UserNotifier.send_acquisition_email(acquisition).deliver
      ProfessionalNotifier.send_acquisition_email(acquisition).deliver
    end
  	AdminNotifier.send_acquisition_email(acquisition).deliver
  	ServiceRemainingSlotsUpdater.new(acquisition.service).update_remaining_slots
  end

  def after_update(acquisition)
  	AdminNotifier.send_acquisition_update_email(acquisition).deliver
  	ServiceRatingUpdater.new(acquisition.service).update_rating
  end

end