class CreateProfessional < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string  :name
      t.string  :doc_ident
      t.boolean :cpf
      t.boolean :passport
      t.integer :professional_status_id
      t.string  :email
      t.string  :phone
    end
  end
end
