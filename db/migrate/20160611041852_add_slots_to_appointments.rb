class AddSlotsToAppointments < ActiveRecord::Migration
  def change
  	add_column(:appointments, :slots, :integer)
  end
end
