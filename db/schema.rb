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

ActiveRecord::Schema.define(version: 20150906220455) do

  create_table "invoices", force: :cascade do |t|
    t.integer  "person_id"
    t.decimal  "total",      precision: 8, scale: 2
    t.integer  "points"
    t.datetime "ordered_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "invoices_people", id: false, force: :cascade do |t|
    t.integer "person_id",  null: false
    t.integer "invoice_id", null: false
  end

  add_index "invoices_people", ["invoice_id", "person_id"], name: "index_invoices_people_on_invoice_id_and_person_id"
  add_index "invoices_people", ["person_id", "invoice_id"], name: "index_invoices_people_on_person_id_and_invoice_id"

  create_table "people", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.datetime "birthday"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id"

  create_table "reward_tiers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reward_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rewards", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "reward_tier_id"
    t.integer  "reward_type_id"
  end

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end