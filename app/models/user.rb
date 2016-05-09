class User < ActiveRecord::Base

	has_secure_token
	has_secure_password :validations => false

	has_many :acquisitions
	has_many :services, through: :acquisitions
	has_many :appointments
	has_many :services, through: :appointments
	has_one :professional

	scope :by_token, -> (token) { where(token: token) }
	scope :by_email, -> (email) { where(email: email) }

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
end
