class AddActiveOnServices < ActiveRecord::Migration
  def change
  	add_column(:services, :active, :boolean)
  end
end
