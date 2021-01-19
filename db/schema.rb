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

ActiveRecord::Schema.define(version: 2021_01_15_195656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "taste"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.string "imperial"
    t.string "metric"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mock_ingreds", force: :cascade do |t|
    t.bigint "mocktail_id", null: false
    t.bigint "measurement_id", null: false
    t.bigint "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_mock_ingreds_on_ingredient_id"
    t.index ["measurement_id"], name: "index_mock_ingreds_on_measurement_id"
    t.index ["mocktail_id"], name: "index_mock_ingreds_on_mocktail_id"
  end

  create_table "mock_tags", force: :cascade do |t|
    t.bigint "mocktail_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mocktail_id"], name: "index_mock_tags_on_mocktail_id"
    t.index ["tag_id"], name: "index_mock_tags_on_tag_id"
  end

  create_table "mocktails", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "glassware"
    t.string "instructions"
    t.integer "rating"
    t.string "about"
    t.string "creator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "users_mocktail_id", null: false
    t.bigint "user_id", null: false
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
    t.index ["users_mocktail_id"], name: "index_notes_on_users_mocktail_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "image"
    t.string "location"
    t.string "bio"
    t.boolean "profesh"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users_mocktails", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "mocktail_id", null: false
    t.boolean "r_and_d"
    t.boolean "favorite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mocktail_id"], name: "index_users_mocktails_on_mocktail_id"
    t.index ["user_id"], name: "index_users_mocktails_on_user_id"
  end

  add_foreign_key "mock_ingreds", "ingredients"
  add_foreign_key "mock_ingreds", "measurements"
  add_foreign_key "mock_ingreds", "mocktails"
  add_foreign_key "mock_tags", "mocktails"
  add_foreign_key "mock_tags", "tags"
  add_foreign_key "notes", "users"
  add_foreign_key "notes", "users_mocktails"
  add_foreign_key "users_mocktails", "mocktails"
  add_foreign_key "users_mocktails", "users"
end
