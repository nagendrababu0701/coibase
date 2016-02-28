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

ActiveRecord::Schema.define(version: 20160227130957) do

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
    t.boolean  "tos"
    t.boolean  "bitcoin_address"
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "forem_categories", force: :cascade do |t|
    t.string   "name",       limit: 255,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",       limit: 255
    t.integer  "position",   limit: 4,   default: 0
  end

  add_index "forem_categories", ["slug"], name: "index_forem_categories_on_slug", unique: true, using: :btree

  create_table "forem_forums", force: :cascade do |t|
    t.string  "name",        limit: 255
    t.text    "description", limit: 65535
    t.integer "category_id", limit: 4
    t.integer "views_count", limit: 4,     default: 0
    t.string  "slug",        limit: 255
    t.integer "position",    limit: 4,     default: 0
  end

  add_index "forem_forums", ["slug"], name: "index_forem_forums_on_slug", unique: true, using: :btree

  create_table "forem_groups", force: :cascade do |t|
    t.string "name", limit: 255
  end

  add_index "forem_groups", ["name"], name: "index_forem_groups_on_name", using: :btree

  create_table "forem_memberships", force: :cascade do |t|
    t.integer "group_id",  limit: 4
    t.integer "member_id", limit: 4
  end

  add_index "forem_memberships", ["group_id"], name: "index_forem_memberships_on_group_id", using: :btree

  create_table "forem_moderator_groups", force: :cascade do |t|
    t.integer "forum_id", limit: 4
    t.integer "group_id", limit: 4
  end

  add_index "forem_moderator_groups", ["forum_id"], name: "index_forem_moderator_groups_on_forum_id", using: :btree

  create_table "forem_posts", force: :cascade do |t|
    t.integer  "topic_id",    limit: 4
    t.text     "text",        limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reply_to_id", limit: 4
    t.string   "state",       limit: 255,   default: "pending_review"
    t.boolean  "notified",                  default: false
  end

  add_index "forem_posts", ["reply_to_id"], name: "index_forem_posts_on_reply_to_id", using: :btree
  add_index "forem_posts", ["state"], name: "index_forem_posts_on_state", using: :btree
  add_index "forem_posts", ["topic_id"], name: "index_forem_posts_on_topic_id", using: :btree
  add_index "forem_posts", ["user_id"], name: "index_forem_posts_on_user_id", using: :btree

  create_table "forem_subscriptions", force: :cascade do |t|
    t.integer "subscriber_id", limit: 4
    t.integer "topic_id",      limit: 4
  end

  create_table "forem_topics", force: :cascade do |t|
    t.integer  "forum_id",     limit: 4
    t.integer  "user_id",      limit: 4
    t.string   "subject",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "locked",                   default: false,            null: false
    t.boolean  "pinned",                   default: false
    t.boolean  "hidden",                   default: false
    t.datetime "last_post_at"
    t.string   "state",        limit: 255, default: "pending_review"
    t.integer  "views_count",  limit: 4,   default: 0
    t.string   "slug",         limit: 255
  end

  add_index "forem_topics", ["forum_id"], name: "index_forem_topics_on_forum_id", using: :btree
  add_index "forem_topics", ["slug"], name: "index_forem_topics_on_slug", unique: true, using: :btree
  add_index "forem_topics", ["state"], name: "index_forem_topics_on_state", using: :btree
  add_index "forem_topics", ["user_id"], name: "index_forem_topics_on_user_id", using: :btree

  create_table "forem_views", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.integer  "viewable_id",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count",             limit: 4,   default: 0
    t.string   "viewable_type",     limit: 255
    t.datetime "current_viewed_at"
    t.datetime "past_viewed_at"
  end

  add_index "forem_views", ["updated_at"], name: "index_forem_views_on_updated_at", using: :btree
  add_index "forem_views", ["user_id"], name: "index_forem_views_on_user_id", using: :btree
  add_index "forem_views", ["viewable_id"], name: "index_forem_views_on_viewable_id", using: :btree

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
    t.boolean  "track_liquidity"
    t.boolean  "identified"
    t.boolean  "real_name_req"
    t.boolean  "sms_verify"
    t.boolean  "trusted_person"
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
    t.boolean  "notif"
    t.boolean  "tos"
    t.string   "bit_address",                        limit: 255
    t.string   "qr_code",                            limit: 255
    t.integer  "user_id",                            limit: 4
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.text     "qr_code_uid",                        limit: 65535
    t.boolean  "publish",                                          default: false
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
    t.string   "email",                  limit: 255, default: "",               null: false
    t.string   "encrypted_password",     limit: 255, default: "",               null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,                null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
    t.boolean  "forem_admin",                        default: false
    t.string   "forem_state",            limit: 255, default: "pending_review"
    t.boolean  "forem_auto_subscribe",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "items", "users"
end
