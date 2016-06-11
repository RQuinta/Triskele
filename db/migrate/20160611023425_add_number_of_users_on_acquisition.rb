class AddNumberOfUsersOnAcquisition < ActiveRecord::Migration
  def change
  	 add_column(:acquisitions, :number_of_users_, :integer)
  end
end
