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

ActiveRecord::Schema.define(version: 20140818214122) do

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "nickname"
    t.string   "image_url"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true

  create_table "words", force: true do |t|
    t.string   "uid",            null: false
    t.integer  "wid"
    t.integer  "auto_increment"
    t.integer  "primary_key"
    t.string   "wordbody",       null: false
    t.string   "jpbody",         null: false
    t.boolean  "remember"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["uid", "wid"], name: "index_words_on_uid_and_wid", unique: true

end
