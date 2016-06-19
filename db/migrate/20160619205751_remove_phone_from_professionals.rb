class RemovePhoneFromProfessionals < ActiveRecord::Migration
  def change
  	remove_column :professionals, :phone
  end
end
