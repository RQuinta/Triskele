class Service < ActiveRecord::Base

  belongs_to :city
  belongs_to :professional
  has_and_belongs_to_many :sports
  has_many :service_pictures
  has_many :appointments
  has_many :additionals
  has_many :users, through: :appointments
  has_many :acquisitions
  has_many :users, through: :acquisitions

  default_scope { where(deleted: [false]) }

  scope :by_name, -> (busca) { where("name LIKE '#{busca}%'").limit(6) } 
  scope :by_city, -> (cities) { where(city_id: cities) }
  scope :by_professional, -> (professional) { where( professional_id: professional) }
  scope :by_state, -> (state) { where(state_id: state) }
  scope :without_deleted, -> { where(deleted: [false])}
  scope :only_aproved, -> { where(aproved: [true])}
  scope :only_active, -> { where(active: [true])}
  scope :by_sport, -> (sports) { joins(:sports).where(sports: { id: sports })}
  scope :with_city, -> { includes(:city) }
  
  validates :name, presence: true

  delegate :state, :state_id, to: :city

  before_create :default_values
  
  private

  def default_values
    self.sales_counter ||= 0
    self.aproved ||= true
    self.active ||= true
    self.deleted ||= false
    self.rating ||= 0
    self.collective ||= self.max_clients > 1 ? true : false
    self.remaining_slots ||= self.max_clients if self.event 
  end


end
