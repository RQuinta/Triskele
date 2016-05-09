class CreateCountry < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :acronym
      t.boolean :active
    end
  end
end
