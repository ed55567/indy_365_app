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

ActiveRecord::Schema.define(version: 2021_01_09_200505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_services", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.text "email"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "zipcode"
    t.string "servicetype"
    t.text "servicedescription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer "service_id"
    t.string "name"
    t.text "address"
    t.string "city"
    t.string "county"
    t.string "phone"
    t.string "website"
    t.string "email"
    t.string "languages"
    t.text "description"
    t.boolean "transportation"
    t.float "latitude"
    t.float "longitude"
    t.boolean "accessibility_for_disabilities"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "zipcode"
    t.text "service_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
