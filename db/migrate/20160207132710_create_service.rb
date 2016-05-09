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
      t.string  :image
      t.integer :adrenaline
      t.text :short_description
      t.text :how_to_get
      t.text :place
      t.text :description
      t.text :duration
      t.text :included
      t.text :not_included
      t.text :restrictions
      t.text :bring
      t.integer :physical_effort
      t.boolean :aproved
      t.integer :professional_id
      t.integer :city_id
      t.string :longitude
      t.string :latitude
    end
  end
end
