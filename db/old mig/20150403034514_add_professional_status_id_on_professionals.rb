class AddProfessionalStatusIdOnProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :professional_status_id, :integer
  end
end
