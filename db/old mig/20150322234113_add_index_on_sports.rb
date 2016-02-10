class AddIndexOnSports < ActiveRecord::Migration
  def change
    add_index :sports, :water
    add_index :sports, :land
    add_index :sports, :air
  end
end
