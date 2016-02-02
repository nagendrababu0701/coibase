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

ActiveRecord::Schema.define(version: 20160202172735) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "buyers", force: :cascade do |t|
    t.integer  "seller_id",       limit: 4
    t.string   "email",           limit: 255
    t.string   "purchase_amount", limit: 255
    t.boolean  "tos",             limit: 1
    t.boolean  "bitcoin_address", limit: 1
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "sell_buy",               limit: 255
    t.string   "country",                limit: 255
    t.string   "currency",               limit: 255
    t.string   "bank_name",              limit: 255
    t.integer  "margin",                 limit: 4
    t.integer  "min_transaction_limit",  limit: 4
    t.integer  "max_transaction_limit",  limit: 4
    t.string   "restrict_to",            limit: 255
    t.decimal  "price",                                precision: 10
    t.string   "title",                  limit: 255
    t.string   "location",               limit: 255
    t.text     "terms",                  limit: 65535
    t.integer  "minimum_volume",         limit: 4
    t.integer  "minimum_feedback_score", limit: 4
    t.decimal  "new_buyer_limit",                      precision: 10
    t.string   "payment_ref",            limit: 255
    t.string   "ref_type",               limit: 255
    t.boolean  "track_liquidity",        limit: 1
    t.boolean  "identified",             limit: 1
    t.boolean  "real_name_req",          limit: 1
    t.boolean  "sms_verify",             limit: 1
    t.boolean  "trusted_person",         limit: 1
    t.integer  "user_id",                limit: 4
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "listings", force: :cascade do |t|
    t.string   "currency",   limit: 255
    t.string   "bank",       limit: 255
    t.decimal  "price",                  precision: 10
    t.string   "min",        limit: 255
    t.string   "max",        limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "dynamicos2",                         limit: 255
    t.string   "bank_name",                          limit: 255
    t.string   "credname",                           limit: 255
    t.string   "sellaccname",                        limit: 255
    t.string   "seller_account_number",              limit: 255
    t.string   "seller_account_number_confirmation", limit: 255
    t.string   "sell_amount",                        limit: 255
    t.string   "minsell_amount",                     limit: 255
    t.string   "currency",                           limit: 255
    t.string   "dynamicos",                          limit: 255
    t.string   "exchange",                           limit: 255
    t.string   "typed",                              limit: 255
    t.string   "dynacharge",                         limit: 255
    t.string   "sell_dollar_value",                  limit: 255
    t.string   "seller_email",                       limit: 255
    t.string   "seller_email_confirmation",          limit: 255
    t.string   "deletepin",                          limit: 255
    t.string   "captcha",                            limit: 255
    t.string   "captcha_key",                        limit: 255
    t.boolean  "notif",                              limit: 1
    t.boolean  "tos",                                limit: 1
    t.string   "bit_address",                        limit: 255
    t.string   "qr_code",                            limit: 255
    t.integer  "user_id",                            limit: 4
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.text     "qr_code_uid",                        limit: 65535
    t.boolean  "publish",                            limit: 1,     default: false
    t.string   "sold_coin",                          limit: 255
  end

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "items", "users"
end
