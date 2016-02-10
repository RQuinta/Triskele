class ServicePicture < ActiveRecord::Base

  belongs_to :service
  
  scope :by_service, -> (service) { where(service_id: service) }
  
  validates :link, presence: true
  validates :master, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :service_id, presence: true

end
