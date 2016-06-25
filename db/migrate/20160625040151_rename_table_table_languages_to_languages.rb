class RenameTableTableLanguagesToLanguages < ActiveRecord::Migration
  def change
  	rename_table :table_languages, :languages
  end
end
