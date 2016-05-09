class CreateProfessional < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.integer :user_id
      t.string :phone
      t.string  :doc_ident
      t.boolean :cpf
      t.boolean :passport
      t.boolean :active
    end
  end
end
