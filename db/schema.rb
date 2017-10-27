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

ActiveRecord::Schema.define(version: 20171026073956) do

  create_table "appointments", primary_key: "appointment_id", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.datetime "from",       null: false
    t.datetime "to",         null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_appointments_on_car_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "cars", primary_key: "car_id", force: :cascade do |t|
    t.string   "car_name",            null: false
    t.string   "car_type",            null: false
    t.string   "registration_number", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["car_name", "registration_number"], name: "index_cars_on_car_name_and_registration_number", unique: true
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string   "user_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

end
