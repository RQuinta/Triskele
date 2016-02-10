class CreateServicePicture < ActiveRecord::Migration
  def change
    create_table :service_pictures do |t|
    	 t.string :link
    	 t.string :description
    	 t.boolean :master
    	 t.integer :service_id
    end
  end
end
