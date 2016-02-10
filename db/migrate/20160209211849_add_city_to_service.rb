class AddCityToService < ActiveRecord::Migration
  def change
  	 add_column(:services, :city_id, :integer)
  end
end
