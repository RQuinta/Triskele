class AddAprovedToProfessional < ActiveRecord::Migration
  def change
  	add_column(:professionals, :aproved, :boolean)
  	
  end
end
