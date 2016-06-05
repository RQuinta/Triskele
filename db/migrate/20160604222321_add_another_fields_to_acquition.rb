class AddAnotherFieldsToAcquition < ActiveRecord::Migration
  def change
  	    add_column(:acquisitions, :token, :string)
  	    add_column(:acquisitions, :base_price, :float)
  	    add_column(:acquisitions, :additional_id, :integer)
  end
end
