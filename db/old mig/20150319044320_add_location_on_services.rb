class AddLocationOnServices < ActiveRecord::Migration
  def change
    add_column :services, :location_id, :integer
  end
end
