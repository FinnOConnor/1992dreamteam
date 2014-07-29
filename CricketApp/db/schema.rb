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

ActiveRecord::Schema.define(version: 20140729014338) do

  create_table "coaches", force: true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "gender"
    t.string   "address"
    t.integer  "home_phone"
    t.integer  "mobile"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: true do |t|
    t.string   "p_first_name"
    t.string   "p_surname"
    t.string   "p_gender"
    t.integer  "p_home_phone"
    t.integer  "p_mobile"
    t.string   "p_email"
    t.string   "s_first_name"
    t.string   "s_surname"
    t.string   "s_gender"
    t.string   "s_address"
    t.integer  "s_home_phone"
    t.integer  "s_mobile"
    t.string   "s_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.date     "dob"
    t.string   "address"
    t.integer  "home_phone"
    t.string   "email"
    t.string   "school"
    t.string   "parent_email"
    t.integer  "school_year"
    t.string   "next_year_school"
    t.string   "grade_last_season"
    t.boolean  "senior"
    t.string   "team"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "coach"
    t.string   "grade"
    t.string   "coach_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
