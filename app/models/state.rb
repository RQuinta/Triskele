class State < ActiveRecord::Base
  
  has_many   :cities, dependent: :restrict_with_error
  belongs_to :country

  scope :by_country, -> (country) { where(country_id: country) }

  validates :name, presence: true, uniqueness: true
  
end
