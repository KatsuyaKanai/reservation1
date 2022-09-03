# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_11_114640) do

  create_table "reservations", force: :cascade do |t|
    t.integer "total_price"
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.integer "person_num"
    t.integer "stay_days"
    t.integer "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_id"
    t.string "room_name", default: "", null: false
    t.string "room_introduction", default: "", null: false
    t.integer "room_price", null: false
    t.string "room_address", default: "", null: false
    t.binary "room_image", default: "x'782737383237333733383332333733333337333333383333333233333337333333333333333733333333333333383333333333333332333333333333333733333333333333333333333333333337333333333333333333333333333333383333333333333333333333333333333233333333333333333333333333333337333333333333333333333333333333333333333333333333333333333333333733333333333333333333333333333333333333333333333333333333333333383333333333333333333333333333333333333333333333333333333333333332333333333333333333333333333333333333333333333333333333333333333733333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333337333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333383333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333233333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333337333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333323333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333733333333333333333333333333333333333333333333333333333333333333323333333333333333333333333333333333333333333333333333333333333337333333333333333333333333333333323333333333333333333333333333333733333333333333323333333333333337333333323333333733323337323727'", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.binary "image"
    t.text "profile"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
