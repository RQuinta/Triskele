class AddPhoneEmailToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :email, :string
    add_column :professionals, :phone, :string
    add_column :professionals, :phone2, :string
  end
end
