class AddRemainingSlotsToService < ActiveRecord::Migration
  def change
  	add_column(:services, :remaining_slots, :integer)
  end
end
