class AddTokenToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :token, :string
  end
end
