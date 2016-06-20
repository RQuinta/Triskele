class RenameTableEditServiceToEditService < ActiveRecord::Migration
  def change
  	rename_table :table_edit_services, :service_changes
  end
end
