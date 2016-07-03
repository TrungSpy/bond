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

ActiveRecord::Schema.define(version: 20160703031844) do

  create_table "invites", force: :cascade do |t|
    t.float    "lat"
    t.float    "lon"
    t.integer  "limit"
    t.integer  "category",   limit: 1, default: 0, null: false
    t.integer  "status",     limit: 1, default: 0, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "room_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "icon_type"
    t.integer  "tag",        limit: 1, default: 0, null: false
  end

  add_index "messages", ["room_id"], name: "index_messages_on_room_id"

  create_table "rooms", force: :cascade do |t|
    t.integer  "invite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "target_lat"
    t.float    "target_lon"
  end

  add_index "rooms", ["invite_id"], name: "index_rooms_on_invite_id"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
