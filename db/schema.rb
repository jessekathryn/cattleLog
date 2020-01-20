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

ActiveRecord::Schema.define(version: 2020_01_20_214427) do

  create_table "cows", force: :cascade do |t|
    t.string "name"
    t.integer "tag_number"
    t.string "cow_status"
    t.integer "age"
    t.integer "birthdate"
    t.integer "weight"
    t.string "health"
    t.string "color"
    t.integer "user_id"
    t.string "notes"
    t.string "field_name"
    t.integer "field_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "expense_name"
    t.integer "truck"
    t.integer "chemicals"
    t.integer "conservation"
    t.integer "depreciation"
    t.integer "employees"
    t.integer "feed"
    t.integer "freight"
    t.integer "gas"
    t.integer "insurance"
    t.integer "interest"
    t.integer "mortgage"
    t.integer "rent"
    t.integer "repais"
    t.integer "seeds"
    t.integer "storage"
    t.integer "supplies"
    t.integer "taxes"
    t.integer "vet"
    t.integer "tools"
    t.integer "fencing_land"
    t.integer "calf"
    t.integer "dues"
    t.integer "misc_labor"
    t.integer "professional_fees"
    t.integer "user_id"
    t.integer "field_id"
    t.integer "cow_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "field_name"
    t.integer "acreage"
    t.string "crop"
    t.integer "coordinates"
    t.integer "user_id"
    t.integer "cow_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "field_id"
    t.integer "cow_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "field_id"
    t.integer "cow_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "cows"
    t.string "fields"
    t.string "expenses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
