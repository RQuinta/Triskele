class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string  :name
      t.float   :price
      t.integer :professional_sport_id
      t.string  :description
      t.integer :min_clients
      t.integer :max_clients
      t.boolean :collective
      t.integer :rating

    end
  end
end
