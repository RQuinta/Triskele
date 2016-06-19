class AddAboutAndPhoneToUser < ActiveRecord::Migration
  def change
  	add_column(:users, :about, :text)
  	add_column(:users, :phone, :string)
  end
end
