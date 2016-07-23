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

ActiveRecord::Schema.define(version: 20160723050156) do

  create_table "rides", force: :cascade do |t|
    t.string   "type"
    t.datetime "request_time"
    t.integer  "est_wait_time"
    t.datetime "pickup_time"
    t.integer  "pickup_pax"
    t.string   "pickup_address"
    t.string   "dropoff_address"
    t.integer  "est_trip_duration_at_pickup"
    t.integer  "pickups_en_route"
    t.integer  "dropoffs_en_route"
    t.datetime "dropoff_time"
    t.float    "cost_before_discounts"
    t.float    "cost_after_discounts"
    t.float    "actual_wait_time"
    t.float    "actual_trip_duration"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id"
    t.string   "user_name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "home_address"
    t.string   "work_address"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
