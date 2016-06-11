class ServiceRemainingSlotsUpdater

  def initialize(service)
    @service = service
  end

  def update_remaining_slots
     if service.event 
       @service.remaining_slots = remaining_slots_calculator(@service.acquisitions)
       @service.save
     end
  end
  
  private

  def total_acquisitions_calculator(acquisitions)
    acquisitions.inject(0) {|acc,acquisition| acc + acquisition.number_of_users }
  end
  
  def remaining_slots_calculator(acquisitions)
    total_acquisitions_calculator(acquisitions)/ acquisitions.length
  end

end