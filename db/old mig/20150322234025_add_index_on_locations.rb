class AddIndexOnLocations < ActiveRecord::Migration
  def change
    add_index :locations, :city_id
  end
end
