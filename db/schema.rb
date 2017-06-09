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

ActiveRecord::Schema.define(version: 20170609174245) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.integer  "course_year_started"
    t.string   "course_address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "holes", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "hole_number"
    t.integer  "par"
    t.integer  "handicap"
    t.integer  "distance"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "soft_beverage"
    t.string   "beer"
    t.string   "mixed_drink"
    t.string   "snack"
    t.string   "sandwich"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hole_id"
    t.integer  "score"
    t.datetime "datetime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weathers", force: :cascade do |t|
    t.float    "temperature"
    t.string   "summary"
    t.integer  "score_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
