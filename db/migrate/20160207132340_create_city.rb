class CreateCity < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string  :name
      t.integer :state_id
      t.boolean :active
    end
  end
end
