class CreateServicePicture < ActiveRecord::Migration
  def change
    create_table :service_pictures do |t|
    	 t.string :public_id
    	 t.string :description
    	 t.integer :service_id
    end
  end
end
