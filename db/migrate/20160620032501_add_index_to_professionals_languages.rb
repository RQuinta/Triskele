class AddIndexToProfessionalsLanguages < ActiveRecord::Migration
  def change
  end
  add_index "languages_professionals", ["language_id", "professional_id"], name: "laguages_professionals_on_language_id_and_professional_id"
  add_index "languages_professionals", ["professional_id", "language_id"], name: "laguages_professionals_on_professional_id_and_language_id"
end
