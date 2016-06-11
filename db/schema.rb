# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160611041852) do

  create_table "acquisitions", force: :cascade do |t|
    t.integer "service_id"
    t.integer "user_id"
    t.integer "rating"
    t.text    "commentary"
    t.string  "token"
    t.float   "base_price"
    t.integer "additional_id"
    t.integer "slots"
  end

  create_table "additionals", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.integer "excess"
    t.integer "service_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "user_id"
    t.text     "doubt_answer"
    t.text     "doubt"
    t.datetime "daytime"
    t.integer  "slots"
  end

  create_table "cities", force: :cascade do |t|
    t.string  "name"
    t.integer "state_id"
    t.boolean "active"
  end

  create_table "countries", force: :cascade do |t|
    t.string  "name"
    t.string  "acronym"
    t.boolean "active"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "professionals", force: :cascade do |t|
    t.integer "user_id"
    t.string  "phone"
    t.string  "doc_ident"
    t.boolean "cpf"
    t.boolean "passport"
    t.boolean "active"
  end

  create_table "service_pictures", force: :cascade do |t|
    t.string  "public_id"
    t.string  "description"
    t.integer "service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "min_clients"
    t.integer  "max_clients"
    t.boolean  "collective"
    t.integer  "rating"
    t.integer  "city_id"
    t.string   "image"
    t.integer  "adrenaline"
    t.text     "short_description"
    t.text     "how_to_get"
    t.text     "place"
    t.text     "description"
    t.text     "duration"
    t.text     "included"
    t.text     "not_included"
    t.text     "restrictions"
    t.text     "bring"
    t.integer  "physical_effort"
    t.boolean  "aproved"
    t.integer  "professional_id"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "daytime"
    t.boolean  "event"
    t.text     "required_experience"
    t.boolean  "deleted"
  end

  create_table "services_sports", id: false, force: :cascade do |t|
    t.integer "sport_id",   null: false
    t.integer "service_id", null: false
  end

  add_index "services_sports", ["service_id", "sport_id"], name: "index_services_sports_on_service_id_and_sport_id"
  add_index "services_sports", ["sport_id", "service_id"], name: "index_services_sports_on_sport_id_and_service_id"

  create_table "sports", force: :cascade do |t|
    t.string  "name"
    t.boolean "water"
    t.boolean "air"
    t.boolean "land"
    t.boolean "need_documentation"
  end

  create_table "states", force: :cascade do |t|
    t.string  "name"
    t.string  "acronym"
    t.integer "country_id"
    t.boolean "active"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "token"
    t.string "image"
  end

end
