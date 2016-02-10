class CreateService < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string  :name
      t.float   :price
      t.integer :min_clients
      t.integer :max_clients
      t.boolean :collective
      t.integer :rating
      t.integer :city_id 
    end
  end
end
