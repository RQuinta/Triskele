class AlterColumnAdditionalToAdditionalIdOnAppointment < ActiveRecord::Migration
  def change
  	rename_column :appointments, :additional, :additional_id
  end
end
