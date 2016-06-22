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
    acquisitions.inject(0) {|acc,rating| acc + rating }
  end

  def average_rating_acquisitions_calculator(acquisitions)
  	filtered_acquisitions = acquisitions.map(&:rating).compact
    (total_rating_acquisitions_calculator(filtered_acquisitions) / (filtered_acquisitions.empty? ? 1 : filtered_acquisitions.size)).round
  end

end