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

ActiveRecord::Schema.define(version: 20160724182051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "rating"
    t.decimal  "price"
    t.integer  "capacity"
    t.text     "description"
    t.text     "rules"
    t.integer  "region_id",   null: false
    t.integer  "user_id"
    t.float    "latitude",    null: false
    t.float    "longitude",   null: false
    t.integer  "zoom",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accommodations_events", force: :cascade do |t|
    t.integer "accommodation_id", null: false
    t.integer "event_id",         null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "type",         null: false
    t.integer  "difficulty",   null: false
    t.float    "length"
    t.float    "duration"
    t.float    "min_height"
    t.float    "max_height"
    t.decimal  "contribution"
    t.integer  "rating"
    t.text     "description"
    t.date     "start_date",   null: false
    t.date     "end_date",     null: false
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "region_id",    null: false
    t.float    "latitude",     null: false
    t.float    "longitude",    null: false
    t.integer  "zoom",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name",           null: false
    t.float    "latitude",       null: false
    t.float    "longitude",      null: false
    t.integer  "zoom",           null: false
    t.integer  "ordering_index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "contents",      null: false
    t.float    "rating"
    t.integer  "user_id",       null: false
    t.integer  "reviewable_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                            null: false
    t.string   "role",                                null: false
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
