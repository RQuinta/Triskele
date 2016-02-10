class CreateProfessionalStatus < ActiveRecord::Migration
  def change
    create_table :professional_status do |t|
      t.integer :description
    end
  end
end
