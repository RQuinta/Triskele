class CreateTableLanguages < ActiveRecord::Migration
  def change
    create_table :table_languages do |t|
    	t.string :code
    	t.string :flag
    	t.string :translation
    	t.string :title
    end
  end
end
