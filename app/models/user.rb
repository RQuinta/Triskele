class User < ActiveRecord::Base

	has_many :acquisitions
	has_many :services, through: :acquisitions
	has_many :appointments
	has_many :services, through: :appointments

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
end
