class CreateAcquisition < ActiveRecord::Migration
  def change
    create_table :acquisitions do |t|
      t.integer :service_id
      t.integer :user_id
      t.integer :rating
    end
  end
end
