class CreateEnterprise < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string  :name
      t.integer :doc_ident
      t.string  :address
      t.string  :cep
      t.string  :about
    end
  end
end
