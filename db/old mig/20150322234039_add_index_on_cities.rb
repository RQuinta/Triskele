class AddIndexOnCities < ActiveRecord::Migration
  def change
    add_index :cities, :state_id
  end
end
