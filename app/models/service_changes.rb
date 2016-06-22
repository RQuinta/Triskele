class ServiceChanges < ActiveRecord::Base

  belongs_to :service
    
  validates :message, presence: true
  validates :service_id, presence: true

end
