class AddAAdrenalineToService < ActiveRecord::Migration
  def change
  	add_column(:services, :adrenaline, :integer)
  end
end
