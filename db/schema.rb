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

ActiveRecord::Schema.define(version: 1) do

  create_table "images", primary_key: "imageid", force: :cascade do |t|
    t.string  "imageurl", limit: 200,               null: false
    t.integer "userid",   limit: 4,                 null: false
    t.binary  "private",  limit: 1,   default: "0", null: false
  end

  add_index "images", ["userid"], name: "userid_idx", using: :btree

  create_table "users", primary_key: "userid", force: :cascade do |t|
    t.string "username",  limit: 45, null: false
    t.string "firstname", limit: 45, null: false
    t.string "lastname",  limit: 45, null: false
  end

end
