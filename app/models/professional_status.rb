class ProfessionalStatus < ActiveRecord::Base

  validates :description, presence: true, uniqueness: true

  has_many :professionals

  ACTIVE = 1
  INACTIVE = 2
  SUSPENDED = 3
  BANNED = 4

end