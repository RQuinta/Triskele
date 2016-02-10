class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string  :name
      t.string  :doc_ident
      t.boolean :cpf
      t.boolean :passport
    end
  end
end
