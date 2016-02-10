class CreateAppointment < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :service_id
      t.integer :user_id
      t.string :doubt_answer
      t.string :doubt
      t.datetime :daytime
    end
  end
end
