# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_19_021527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "births", force: :cascade do |t|
    t.datetime "occurred_at"
    t.text "notes"
    t.bigint "individual_id"
    t.bigint "father_id"
    t.bigint "mother_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["father_id"], name: "index_births_on_father_id"
    t.index ["individual_id"], name: "index_births_on_individual_id"
    t.index ["mother_id"], name: "index_births_on_mother_id"
  end

  create_table "citations", force: :cascade do |t|
    t.bigint "source_id"
    t.string "citable_type"
    t.bigint "citable_id"
    t.string "citation_details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["citable_type", "citable_id"], name: "index_citations_on_citable_type_and_citable_id"
    t.index ["source_id"], name: "index_citations_on_source_id"
  end

  create_table "individuals", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "individual_one_id"
    t.bigint "individual_two_id"
    t.datetime "marriage_date"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["individual_one_id"], name: "index_relationships_on_individual_one_id"
    t.index ["individual_two_id"], name: "index_relationships_on_individual_two_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "source_info"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "births", "individuals"
  add_foreign_key "births", "individuals", column: "father_id"
  add_foreign_key "births", "individuals", column: "mother_id"
  add_foreign_key "citations", "sources"
  add_foreign_key "relationships", "individuals", column: "individual_one_id"
  add_foreign_key "relationships", "individuals", column: "individual_two_id"
end
