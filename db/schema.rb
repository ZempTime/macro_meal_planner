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

ActiveRecord::Schema.define(version: 20140722234312) do

  create_table "edibles", force: true do |t|
    t.string  "name"
    t.integer "serving_size"
    t.string  "serving_unit"
    t.integer "calories"
    t.integer "fat_calories"
    t.integer "total_fat"
    t.integer "cholesterol"
    t.integer "sodium"
    t.integer "potassium"
    t.integer "total_carbs"
    t.integer "fiber"
    t.integer "sugar"
    t.integer "protein"
  end

  create_table "macro_requirements", force: true do |t|
    t.integer "total_calories"
    t.integer "carbs"
    t.integer "fat"
    t.integer "protein"
    t.integer "fiber"
    t.integer "user_id"
  end

  create_table "meal_items", force: true do |t|
    t.integer "meal_id"
    t.integer "edible_id"
    t.integer "serving_size"
    t.string  "serving_unit"
    t.integer "calories"
    t.integer "fat_calories"
    t.integer "total_fat"
    t.integer "cholesterol"
    t.integer "sodium"
    t.integer "potassium"
    t.integer "total_carbs"
    t.integer "fiber"
    t.integer "sugar"
    t.integer "protein"
  end

  create_table "meals", force: true do |t|
    t.string  "name"
    t.integer "user_id"
    t.integer "total_carbs"
    t.integer "total_protein"
    t.integer "total_fat"
    t.integer "total_fiber"
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
