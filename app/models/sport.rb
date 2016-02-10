class Sport < ActiveRecord::Base
  
  has_and_belongs_to_many :services, dependent: :restrict_with_error

  scope :by_location, -> (location) { where(location_id: location) }
  scope :with_services, -> { joins(:services)}
  scope :by_name, -> (searchText) do
    where("name LIKE '#{searchText}%'").limit(10)
  end
  
  validates :name, presence: true, uniqueness: true

end
