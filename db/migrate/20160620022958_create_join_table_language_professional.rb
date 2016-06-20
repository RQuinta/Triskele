class CreateJoinTableLanguageProfessional < ActiveRecord::Migration
  def change
  	create_join_table :languages, :professionals do |t|
      
    end
  end
end
