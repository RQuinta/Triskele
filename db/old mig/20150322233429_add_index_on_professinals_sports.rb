class AddIndexOnProfessinalsSports < ActiveRecord::Migration
  def change
    add_index :professionals_sports, :professional_id
    add_index :professionals_sports, :sport_id
  end
end
