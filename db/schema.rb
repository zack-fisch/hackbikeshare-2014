# encoding: UTF-8
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


ActiveRecord::Schema.define(version: 20140816192020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  create_table "stations", force: true do |t|
    t.string   "station_name"
    t.integer  "station_id"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "longitude"
  end

  create_table "trips", force: true do |t|
    t.string   "duration"
    t.integer  "start_station_id"
    t.integer  "end_station_id"
    t.string   "zip_code"
    t.string   "bike_number"
    t.datetime "created_at"
    t.datetime "updated_at"


  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false

  end
end
