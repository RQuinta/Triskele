class AddFieldsToAcquisition < ActiveRecord::Migration
  def change
    add_column(:acquisitions, :commentary, :text)
  end
end
