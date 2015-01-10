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

ActiveRecord::Schema.define(version: 20150107062718) do

  create_table "address_masters", force: true do |t|
    t.string   "local_gov_cd"
    t.string   "zip5"
    t.string   "zip7"
    t.string   "pref_kana"
    t.string   "city_kana"
    t.string   "town_kana"
    t.string   "pref"
    t.string   "city"
    t.string   "town"
    t.string   "flg1"
    t.string   "flg2"
    t.string   "flg3"
    t.string   "flg4"
    t.string   "flg5"
    t.string   "flg6"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "sex"
    t.string   "zipcode"
    t.string   "pref"
    t.string   "city"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
