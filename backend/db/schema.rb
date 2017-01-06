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

ActiveRecord::Schema.define(version: 20170106051115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expeditions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "number_of_guests"
    t.integer  "cost"
    t.boolean  "allow_multiple_bookings_on_date"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "game_type"
    t.string   "quality"
    t.string   "abundance"
    t.integer  "number_animals"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "hunting_amenities", force: :cascade do |t|
    t.string   "food"
    t.string   "lodging"
    t.string   "gear"
    t.string   "ammo"
    t.string   "guns"
    t.string   "vehicles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hunting_properties", force: :cascade do |t|
    t.text     "description"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "acreage"
    t.text     "vegetation"
    t.text     "water_sources"
    t.integer  "number_blinds"
    t.string   "blind_types"
    t.integer  "feeders"
    t.boolean  "natural_feeders"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "indentifications", force: :cascade do |t|
    t.boolean  "proven"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.boolean  "credit_card"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payout_preferences", force: :cascade do |t|
    t.boolean  "bank_account"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "profile_photo"
    t.string   "profile_video"
    t.text     "profile_e_description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
