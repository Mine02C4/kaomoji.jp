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

ActiveRecord::Schema.define(version: 20131104173743) do

  create_table "feelings", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feelings_kaomojies", force: true do |t|
    t.integer "feeling_id"
    t.integer "kaomoji_id"
  end

  create_table "kaomojies", force: true do |t|
    t.string   "kaomoji",         null: false
    t.datetime "registered_time", null: false
    t.datetime "published_time",  null: false
    t.integer  "status",          null: false
    t.boolean  "has_words",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kaomojies_readings", force: true do |t|
    t.integer "kaomoji_id"
    t.integer "reading_id"
  end

  create_table "readings", force: true do |t|
    t.string   "reading",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
