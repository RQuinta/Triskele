class AddAprovedToService < ActiveRecord::Migration
  def change
  		add_column(:services, :aproved, :boolean)
  end
end
