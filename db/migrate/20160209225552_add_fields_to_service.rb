class AddFieldsToService < ActiveRecord::Migration
  def change
  	add_column(:services, :description, :text)
  	add_column(:services, :duration, :text)
  	add_column(:services, :included, :text)
  	add_column(:services, :not_included, :text)
  	add_column(:services, :restrictions, :text)
  	add_column(:services, :bring, :text)
  end
end
