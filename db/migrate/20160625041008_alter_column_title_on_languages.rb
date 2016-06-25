class AlterColumnTitleOnLanguages < ActiveRecord::Migration
  def change
  	rename_column :languages, :title, :name
  end
end
