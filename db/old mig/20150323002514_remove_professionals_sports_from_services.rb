class RemoveProfessionalsSportsFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :professional_sport_id, :integer
  end
end
