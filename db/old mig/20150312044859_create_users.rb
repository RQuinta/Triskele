class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :doc_ident
      t.string :phone
      t.boolean :cpf
      t.boolean :passport
  end
    end
  end
end
