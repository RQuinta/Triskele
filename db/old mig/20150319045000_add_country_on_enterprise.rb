class AddCountryOnEnterprise < ActiveRecord::Migration
  def change
    add_column :enterprises, :country_id, :integer
  end
end
