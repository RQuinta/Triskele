class CreateSport < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string  :name
      t.boolean :water
      t.boolean :air
      t.boolean :land
      t.boolean :need_documentation
    end
  end
end
