class Appointment < ActiveRecord::Base

	belongs_to :service
	belongs_to :user

	scope :by_user, -> (user) { where(user_id: user) }
	scope :by_service, -> (service) { where(service_id: service) }

end