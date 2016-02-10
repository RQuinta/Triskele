class City < ActiveRecord::Base
  
  has_many   :services, dependent: :restrict_with_error
  
  belongs_to :state

  scope :by_state, -> (state) { where(state_id: state) }

  scope :by_name, -> (searchText) do
    where("name LIKE '#{searchText}%'").limit(10)
  end

  validates :name, presence: true, uniqueness: { scope: :state_id }

end
