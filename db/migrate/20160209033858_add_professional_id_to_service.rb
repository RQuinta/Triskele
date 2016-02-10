class AddProfessionalIdToService < ActiveRecord::Migration
  def change
  	 add_column(:services, :professional_id, :integer)
  end
end
