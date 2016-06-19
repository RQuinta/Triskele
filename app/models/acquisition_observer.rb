class AcquisitionObserver < ActiveRecord::Observer
  
  def after_create(acquisition)
    if acquisition.service.event
      UserNotifier.send_acquisition_email(acquisition).deliver_later
      ProfessionalNotifier.send_acquisition_email(acquisition).deliver_later
    end
  	AdminNotifier.send_acquisition_email(acquisition).deliver_later
  	ServiceRemainingSlotsUpdater.new(acquisition.service).update_remaining_slots
    ServiceSalesCounterUpdater.new(acquisition.service).update_sales_counter
  end

  def after_update(acquisition)
  	AdminNotifier.send_acquisition_update_email(acquisition).deliver_later
  	ServiceRatingUpdater.new(acquisition.service).update_rating
  end

end