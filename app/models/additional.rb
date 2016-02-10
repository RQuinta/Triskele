class Additional < ActiveRecord::Base

  belongs_to :service
  
  scope :by_service, -> (service) { where(service_id: service) }
  
  validates :name, presence: true, uniqueness: { scope: [:service_id] }
  validates :description, presence: true
  validates :excess, presence: true

end
