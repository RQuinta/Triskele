class Acquisition < ActiveRecord::Base

	has_secure_token

	belongs_to :service
	belongs_to :user

	scope :by_user, -> (user) { where(user_id: user) }
	scope :by_token, -> (token) { where(token: token) }
	scope :by_service, -> (service) { where(service_id: service) }

	validates :user_id, presence: true
	validates :service_id, presence: true
	validates :base_price, presence: true

end