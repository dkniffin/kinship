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

ActiveRecord::Schema.define(version: 2019_07_14_205708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "births", force: :cascade do |t|
    t.datetime "occurred_at"
    t.text "notes"
    t.bigint "individual_id"
    t.bigint "father_id"
    t.bigint "mother_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["father_id"], name: "index_births_on_father_id"
    t.index ["individual_id"], name: "index_births_on_individual_id"
    t.index ["mother_id"], name: "index_births_on_mother_id"
  end

  create_table "citations", force: :cascade do |t|
    t.bigint "source_id"
    t.string "citable_type"
    t.bigint "citable_id"
    t.string "citation_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["citable_type", "citable_id"], name: "index_citations_on_citable_type_and_citable_id"
    t.index ["source_id"], name: "index_citations_on_source_id"
  end

  create_table "flipper_features", force: :cascade do |t|
    t.string "key", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_flipper_features_on_key", unique: true
  end

  create_table "flipper_gates", force: :cascade do |t|
    t.string "feature_key", null: false
    t.string "key", null: false
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_key", "key", "value"], name: "index_flipper_gates_on_feature_key_and_key_and_value", unique: true
  end

  create_table "individuals", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "individual_one_id"
    t.bigint "individual_two_id"
    t.datetime "marriage_date"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["individual_one_id"], name: "index_relationships_on_individual_one_id"
    t.index ["individual_two_id"], name: "index_relationships_on_individual_two_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "source_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "births", "individuals"
  add_foreign_key "births", "individuals", column: "father_id"
  add_foreign_key "births", "individuals", column: "mother_id"
  add_foreign_key "citations", "sources"
  add_foreign_key "relationships", "individuals", column: "individual_one_id"
  add_foreign_key "relationships", "individuals", column: "individual_two_id"
end
