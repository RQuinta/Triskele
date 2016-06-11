class AddAdditionalIdToAppointment < ActiveRecord::Migration
  def change
  	add_column(:appointments, :additional_id, :integer)
  end
end
