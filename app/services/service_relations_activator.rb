class ServiceRelationsActivator

  def initialize(service)
    @service = service
  end

  def verify_active_status
    verify_city_active_status @service.city
    verify_sports_active_status @service.sports
  end
  
  private

  def verify_city_active_status(city)
    city.active = !Service.only_aproved.only_active.by_city(city.id).count.zero? 
    city.save if city.changed?
  end

  def verify_sports_active_status(sports)
    sports.each do |sport| 
      sport.active = !Service.only_aproved.only_active.by_sport(sport.id).count.zero? 
      sport.save if sport.changed?
    end
  end

end