class Additional < ActiveRecord::Base

  belongs_to :service
  
  scope :by_service, -> (service) { where(service_id: service) }
  
  validates :description, presence: true, uniqueness: { scope: [:service_id] }
  validates :excess, presence: true

end
