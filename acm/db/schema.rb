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

ActiveRecord::Schema.define(version: 20130416234440) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "disp_order",  default: 100,  null: false
    t.boolean  "is_active",   default: true, null: false
    t.text     "note"
    t.integer  "update_user"
    t.datetime "updated_at"
    t.integer  "create_user"
    t.datetime "created_at"
  end

  create_table "customers", force: true do |t|
    t.datetime "offered_on"
    t.string   "sei_kana"
    t.string   "mei_kana"
    t.string   "sei_kanji"
    t.string   "mei_kanji"
    t.string   "identifier"
    t.string   "email"
    t.string   "tel"
    t.string   "postcode"
    t.string   "address"
    t.string   "url"
    t.text     "note"
    t.integer  "updated_user"
    t.datetime "updated_at"
    t.integer  "created_user"
    t.datetime "created_at"
  end

  create_table "menus", force: true do |t|
    t.string   "name"
    t.integer  "default_payment"
    t.text     "note"
    t.boolean  "display_flg"
    t.integer  "updated_user"
    t.datetime "updated_at"
    t.integer  "created_user"
    t.datetime "created_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "customer_id"
    t.integer  "menu_id"
    t.date     "attended_on"
    t.integer  "quantity"
    t.integer  "payment"
    t.boolean  "paid_flg"
    t.text     "note"
    t.datetime "deleted_at"
    t.datetime "canceled_at"
    t.integer  "updated_user"
    t.datetime "updated_at"
    t.integer  "created_user"
    t.datetime "created_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_id"
    t.string   "address"
    t.string   "password"
    t.boolean  "delete_flg"
    t.integer  "updated_user"
    t.datetime "updated_at"
    t.integer  "created_user"
    t.datetime "created_at"
  end

end
