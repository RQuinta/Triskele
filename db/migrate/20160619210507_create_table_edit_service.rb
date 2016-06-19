class CreateTableEditService < ActiveRecord::Migration
  def change
    create_table :table_edit_services do |t|
    	t.text 		:message
    	t.integer	:service_id
    	t.text		:commentary
    	t.boolean	:approved
    end
  end
end
