class RemoveTranslationAndFlagFromLanguages < ActiveRecord::Migration
  def change
  	remove_column :languages, :translation
  	remove_column :languages, :flag
  end
end
