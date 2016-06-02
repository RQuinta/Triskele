class AlterColumnRequiredPreferencesOnServices < ActiveRecord::Migration
  def change
	rename_column :services, :required_preferences, :required_experience
  end
end
