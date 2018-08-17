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

ActiveRecord::Schema.define(version: 2018_08_14_002627) do

  create_table "pt_events", force: :cascade do |t|
    t.string "name"
    t.date "the_date"
    t.string "title"
    t.text "comment"
    t.string "area"
    t.string "image"
    t.integer "pt_trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pt_trainer_id"], name: "index_pt_events_on_pt_trainer_id"
  end

  create_table "pt_members", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.integer "sex"
    t.string "email"
    t.string "title"
    t.text "comment"
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "pt_trainers", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.integer "sex"
    t.string "email"
    t.string "title"
    t.text "comment"
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

end
