class AddDeletedToService < ActiveRecord::Migration
  def change
     add_column(:services, :deleted, :boolean)
  end
end
