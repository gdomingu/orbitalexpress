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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130801004352) do

  create_table "flights", :force => true do |t|
    t.string   "name"
    t.integer  "launch_hour_id"
    t.integer  "docking_hour_id"
    t.integer  "launching_from_id"
    t.integer  "docking_at_id"
    t.integer  "weekday_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "flights_weekdays", :force => true do |t|
    t.integer "flight_id"
    t.integer "weekday_id"
  end

  create_table "launch_windows", :force => true do |t|
    t.time     "hour"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "spaceport"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reservations", :force => true do |t|
    t.integer  "seat_id"
    t.integer  "user_id"
    t.integer  "flight_id"
    t.datetime "date_of_flight"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "seats", :force => true do |t|
    t.integer  "row"
    t.string   "seat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spaceships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.boolean  "is_admin"
  end

  create_table "weekdays", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
