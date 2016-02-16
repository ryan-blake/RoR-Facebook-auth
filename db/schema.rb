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

ActiveRecord::Schema.define(version: 20160216030344) do

  create_table "gyms", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spots", force: :cascade do |t|
    t.string   "title"
    t.integer  "weight"
    t.integer  "time"
    t.string   "body"
    t.integer  "user_id"
    t.integer  "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spots", ["gym_id"], name: "index_spots_on_gym_id"
  add_index "spots", ["user_id"], name: "index_spots_on_user_id"

  create_table "spotters", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spotters", ["spot_id"], name: "index_spotters_on_spot_id"
  add_index "spotters", ["user_id"], name: "index_spotters_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.integer  "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["gym_id"], name: "index_users_on_gym_id"

end
