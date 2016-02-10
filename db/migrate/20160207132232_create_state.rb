class CreateState < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string  :name
      t.string  :acronym
      t.integer :country_id
    end
  end
end
