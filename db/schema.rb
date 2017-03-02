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

ActiveRecord::Schema.define(version: 20161213182208) do

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "content_type"
    t.string   "content_background"
    t.string   "content_special"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "style_profile_id"
    t.         "pictures"
  end

  create_table "style_profiles", force: :cascade do |t|
    t.integer  "col_width"
    t.string   "col_type"
    t.integer  "col_height"
    t.integer  "row_height"
    t.integer  "left_padding"
    t.integer  "right_padding"
    t.integer  "top_padding"
    t.integer  "bottom_padding"
    t.integer  "left_margin"
    t.integer  "right_margin"
    t.integer  "top_margin"
    t.integer  "bottom_margin"
    t.string   "special_style"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
  end

end
