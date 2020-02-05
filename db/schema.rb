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
    t.string "status"
    t.integer "age"
    t.integer "days"
    t.date "birthdate"
    t.integer "weight"
    t.string "health"
    t.string "color"
    t.integer "user_id"
    t.string "notes"
    t.string "shots"
    t.string "history"
    t.string "field_name"
    t.boolean "pregnant", default: false
    t.date "calving_date"
    t.string "pregnancy_method"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "description"
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
    t.integer "repairs"
    t.integer "seeds"
    t.integer "storage"
    t.integer "supplies"
    t.integer "taxes"
    t.integer "vet"
    t.integer "tools"
    t.integer "fencing"
    t.integer "calf"
    t.integer "dues"
    t.integer "misc_labor"
    t.integer "professional_fees"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "acreage"
    t.string "crop"
    t.float "moisture"
    t.string "latitude"
    t.string "longitude"
    t.integer "bushel"
    t.integer "crop_weight_lb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.integer "user_id"
    t.string "content"
    t.string "reportable_type"
    t.integer "reportable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reportable_type", "reportable_id"], name: "index_reports_on_reportable_type_and_reportable_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.integer "user_id"
    t.date "tune_up"
    t.integer "fuel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
