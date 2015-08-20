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

ActiveRecord::Schema.define(version: 20150820011821) do

  create_table "buyers", force: :cascade do |t|
    t.integer  "seller_id"
    t.string   "email"
    t.string   "purchase_amount"
    t.boolean  "tos"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "currency"
    t.string   "bank"
    t.decimal  "price"
    t.string   "min"
    t.string   "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "dynamicos2"
    t.string   "bank_name"
    t.string   "credname"
    t.string   "sellaccname"
    t.string   "seller_account_number"
    t.string   "seller_account_number_confirmation"
    t.string   "sell_amount"
    t.string   "minsell_amount"
    t.string   "currency"
    t.string   "dynamicos"
    t.string   "exchange"
    t.string   "typed"
    t.string   "dynacharge"
    t.string   "sell_dollar_value"
    t.string   "seller_email"
    t.string   "seller_email_confirmation"
    t.string   "deletepin"
    t.string   "captcha_code"
    t.boolean  "notif"
    t.boolean  "tos"
    t.string   "bit_address"
    t.string   "qr_code"
    t.integer  "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.text     "qr_code_uid"
  end

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
