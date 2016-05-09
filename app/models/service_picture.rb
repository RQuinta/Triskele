class ServicePicture < ActiveRecord::Base

  belongs_to :service
  
  scope :by_service, -> (service) { where(service_id: service) }
  
  validates :public_id, presence: true
  validates :service_id, presence: true

end
