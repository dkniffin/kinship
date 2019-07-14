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

ActiveRecord::Schema.define(version: 2019_07_14_153219) do

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

  add_foreign_key "births", "individuals"
  add_foreign_key "births", "individuals", column: "father_id"
  add_foreign_key "births", "individuals", column: "mother_id"
  add_foreign_key "relationships", "individuals", column: "individual_one_id"
  add_foreign_key "relationships", "individuals", column: "individual_two_id"
end
