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

ActiveRecord::Schema.define(version: 20140831213405) do

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.text     "category_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dives", force: true do |t|
    t.string   "organistion"
    t.text     "category_description"
    t.date     "dive_date"
    t.integer  "dive_number"
    t.string   "site_location"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "vessel"
    t.string   "tide"
    t.string   "weather"
    t.decimal  "air_temperature"
    t.decimal  "water_temperature"
    t.string   "wind"
    t.string   "current"
    t.decimal  "visiability"
    t.string   "conditions"
    t.string   "dive_type"
    t.string   "breathing_medium"
    t.text     "environment"
    t.text     "equipment"
    t.text     "tasks"
    t.string   "role"
    t.integer  "air_in"
    t.integer  "air_out"
    t.time     "time_in"
    t.time     "time_out"
    t.string   "surface_swim"
    t.integer  "wet_time"
    t.integer  "max_depth"
    t.integer  "bottom_time"
    t.integer  "no_decompression_limit"
    t.integer  "surface_interval"
    t.decimal  "repeitive_factor"
    t.integer  "effective_bottom_time"
    t.string   "repetitive_group"
    t.string   "safety_stop"
    t.integer  "user_id"
    t.boolean  "signed"
    t.integer  "dive_coordinator"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dive_buddy"
    t.integer  "trip_id"
  end

  add_index "dives", ["trip_id"], name: "index_dives_on_trip_id"
  add_index "dives", ["user_id"], name: "index_dives_on_user_id"

  create_table "photos", force: true do |t|
    t.string   "photo_category"
    t.string   "photo_filename"
    t.string   "photo_term"
    t.integer  "user_id"
    t.date     "photo_date"
    t.string   "genus_species"
    t.text     "photo_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photograph_file_name"
    t.string   "photograph_content_type"
    t.integer  "photograph_file_size"
    t.datetime "photograph_updated_at"
    t.integer  "category_id"
    t.integer  "dive_id"
  end

  add_index "photos", ["category_id"], name: "index_photos_on_category_id"
  add_index "photos", ["dive_id"], name: "index_photos_on_dive_id"
  add_index "photos", ["user_id"], name: "index_photos_on_user_id"

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "trips", force: true do |t|
    t.string   "trip_name"
    t.string   "trip_organistion"
    t.string   "trip_category"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trip_id"
    t.integer  "udo"
    t.boolean  "signed"
  end

  add_index "trips", ["trip_id"], name: "index_trips_on_trip_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
