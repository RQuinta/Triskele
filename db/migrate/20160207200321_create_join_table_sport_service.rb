class CreateJoinTableSportService < ActiveRecord::Migration
  def change
    create_join_table :sports, :services do |t|
      t.index [:sport_id, :service_id]
      t.index [:service_id, :sport_id]
    end
  end
end
