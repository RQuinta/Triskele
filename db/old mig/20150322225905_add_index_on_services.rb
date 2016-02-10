class AddIndexOnServices < ActiveRecord::Migration
  def change
    add_index :services, :professional_sport_id
    add_index :services, :location_id
  end
end
