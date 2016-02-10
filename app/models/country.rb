class Country < ActiveRecord::Base

 has_many :states, dependent: :restrict_with_error

 validates :name, presence: true, uniqueness: true
 
end
