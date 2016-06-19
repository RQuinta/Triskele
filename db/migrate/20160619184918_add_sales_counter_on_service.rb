class AddSalesCounterOnService < ActiveRecord::Migration
  def change
  	add_column(:services, :sales_counter, :integer)
  end
end
