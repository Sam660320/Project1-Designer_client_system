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

ActiveRecord::Schema.define(version: 2022_04_13_000814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.text "name"
    t.text "phone"
    t.text "email"
    t.text "address"
    t.text "heard_us_from"
    t.text "preferred_style"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "designer_id"
  end

  create_table "designers", force: :cascade do |t|
    t.text "name"
    t.date "dob"
    t.text "hireyear"
    t.text "email"
    t.text "phone"
    t.text "address"
    t.text "image"
    t.text "award"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.text "name"
    t.text "location"
    t.text "area"
    t.text "style"
    t.date "start_date"
    t.boolean "finished"
    t.date "estimate_time_finish"
    t.text "image"
    t.text "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "designer_id"
    t.integer "client_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
