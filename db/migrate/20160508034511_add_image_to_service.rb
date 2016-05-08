class AddImageToService < ActiveRecord::Migration
  def change
    add_column :services, :image, :string
  end
end
