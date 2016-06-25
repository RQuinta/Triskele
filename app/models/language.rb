class Language < ActiveRecord::Base

 has_and_belongs_to_many :professionals, dependent: :restrict_with_error

 validates :code, :name, presence: true

end
