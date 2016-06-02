class AddRequiredExperienceToService < ActiveRecord::Migration
  def change
  	add_column(:services, :required_experience, :text)
  end
end
