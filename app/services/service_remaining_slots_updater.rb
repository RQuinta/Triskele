class ServiceRemainingSlotsUpdater

  def initialize(service)
    @service = service
  end

  def update_remaining_slots
    # if service.event 
    #   @service.remaining_slots = remaining_slots_calculator(@service.acquisitions)
    #   @service.save
    # end
  end
  
  private

  def remaining_slots_calculator(service)
    total_rating_acquisitions_calculator(acquisitions)/ acquisitions.length
  end

end