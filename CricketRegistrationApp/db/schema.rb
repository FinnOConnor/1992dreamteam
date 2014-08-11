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

ActiveRecord::Schema.define(version: 20140811232738) do

  create_table "coaches", force: true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "gender"
    t.string   "address"
    t.integer  "home_phone"
    t.integer  "mobile_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: true do |t|
    t.string   "p_first_name"
    t.string   "p_surname"
    t.string   "p_gender"
    t.string   "p_address"
    t.integer  "p_home_phone"
    t.integer  "p_mobile_phone"
    t.string   "p_email"
    t.string   "s_first_name"
    t.string   "s_surname"
    t.string   "s_gender"
    t.string   "s_address"
    t.integer  "s_home_phone"
    t.integer  "s_mobile_phone"
    t.string   "s_email"
    t.integer  "coach_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "season"
    t.decimal  "amount_due"
    t.decimal  "amount_paid"
    t.boolean  "paid"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "address"
    t.integer  "contact_phone"
    t.string   "email"
    t.integer  "school_year"
    t.string   "school_next_year"
    t.string   "grade_last_season"
    t.string   "team_id_last_season"
    t.boolean  "senior"
    t.text     "notes"
    t.integer  "team_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "grade"
    t.integer  "coach_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
