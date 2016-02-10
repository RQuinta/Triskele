class CreateAdditional < ActiveRecord::Migration
  def change
    create_table :additionals do |t|
      t.string :name
      t.string :description
      t.integer :excess
      t.integer :service_id
    end
  end
end
