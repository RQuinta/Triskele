class ProfessionalsSports < ActiveRecord::Migration
  def change
    create_table :professionals_sports do |t|
      t.integer :professional_id
      t.integer :sport_id
      t.boolean :active
    end
  end
end
