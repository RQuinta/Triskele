class ServiceRatingUpdater

  def initialize(service)
    @service = service
  end

  def update_rating
    @service.rating = average_rating_acquisitions_calculator(@service.acquisitions)
    @service.save
  end
  
  private

  def total_rating_acquisitions_calculator(acquisitions)
    acquisitions.inject(0) {|acc,acquisition| acc + acquisition.rating}
  end

  def average_rating_acquisitions_calculator(acquisitions)
    total_rating_acquisitions_calculator(acquisitions)/ acquisitions.length
  end

end