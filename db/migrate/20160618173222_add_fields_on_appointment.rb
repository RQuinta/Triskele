class AddFieldsOnAppointment < ActiveRecord::Migration
	def change
  		add_column(:appointments, :token, :string)
  	    add_column(:appointments, :base_price, :float)
  	    add_column(:appointments, :additional_price, :integer)
  	end
end
