class Professional < ActiveRecord::Base

  has_many :services
  belongs_to :user
  has_many :acquisitions, through: :services
  has_and_belongs_to_many :languages


end