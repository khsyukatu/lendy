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

ActiveRecord::Schema.define(version: 20160302085327) do

  create_table "borrow_conditions", force: true do |t|
    t.string   "bank"
    t.integer  "amount"
    t.integer  "rate_type"
    t.float    "rate"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "borrow_conditions", ["user_id"], name: "index_borrow_conditions_on_user_id"

  create_table "business_profiles", force: true do |t|
    t.integer  "job_status"
    t.string   "company"
    t.integer  "job_type"
    t.string   "job_title"
    t.integer  "income"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "business_profiles", ["user_id"], name: "index_business_profiles_on_user_id"

  create_table "lenders", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "lenders", ["email"], name: "index_lenders_on_email", unique: true
  add_index "lenders", ["reset_password_token"], name: "index_lenders_on_reset_password_token", unique: true

  create_table "proposals", force: true do |t|
    t.integer  "borrow_condition_id"
    t.integer  "lender_id"
    t.float    "rate"
    t.integer  "rate_type"
    t.integer  "amount"
    t.text     "description"
    t.boolean  "choiced"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "completed"
  end

  add_index "proposals", ["borrow_condition_id"], name: "index_proposals_on_borrow_condition_id"
  add_index "proposals", ["lender_id"], name: "index_proposals_on_lender_id"

  create_table "school_profiles", force: true do |t|
    t.string   "name"
    t.string   "department"
    t.date     "graduation"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "school_profiles", ["user_id"], name: "index_school_profiles_on_user_id"

  create_table "user_profiles", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "name2"
    t.string   "yomi"
    t.string   "yomi2"
    t.string   "tel"
    t.string   "zipcode"
    t.string   "prefecture"
    t.string   "city"
    t.string   "apartment"
    t.date     "birthday"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
