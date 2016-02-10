class CreateProfessionalStatus < ActiveRecord::Migration
  def change
    create_table :professional_statuses do |t|
      t.string :description
    end
  end
end
