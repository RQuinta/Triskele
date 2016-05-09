class CreateAppointment < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :service_id
      t.integer :user_id
      t.text :doubt_answer
      t.text :doubt
      t.datetime :daytime
    end
  end
end
