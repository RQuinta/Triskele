class AddAnotherFieldsToService < ActiveRecord::Migration
  def change
  	add_column(:services, :short_description, :text)
  	add_column(:services, :how_to_get, :text)
  	add_column(:services, :phisycal_effort, :integer)
  	add_column(:services, :place, :text)
  end
end
