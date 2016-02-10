class RemoveRatingFromSports < ActiveRecord::Migration
  def change
    remove_column :sports, :rating, :integer
  end
end
