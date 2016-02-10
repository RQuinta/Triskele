class AddUserFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :doc_ident, :string
    add_column :users, :phone, :string
    add_column :users, :ddd, :string
    add_column :users, :cpf, :boolean
    add_column :users, :passport, :boolean
  end
end
