class ServiceChanges < ActiveRecord::Base

  belongs_to :service
    
  validates :message, presence: true
  validates :service_id, presence: true

  before_save :default_values
  
  private

  def default_values
    self.approved ||= false
  end


end
