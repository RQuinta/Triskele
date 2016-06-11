class AddSlotsOnAcquisition < ActiveRecord::Migration
  def change
  	 add_column(:acquisitions, :slots, :integer)
  end
end
