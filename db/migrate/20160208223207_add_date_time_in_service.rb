class AddDateTimeInService < ActiveRecord::Migration
  def change
  	  add_column(:services, :daytime, :datetime)
  	  add_column(:services, :event, :boolean)
  end
end
