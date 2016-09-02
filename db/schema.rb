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

ActiveRecord::Schema.define(version: 20160715202844) do

  create_table "entries", force: :cascade do |t|
    t.string   "name"
    t.decimal  "amount"
    t.integer  "day"
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "who"
    t.date     "when"
    t.decimal  "amount"
    t.integer  "repeater_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["repeater_id"], name: "index_payments_on_repeater_id"
  end

  create_table "repeaters", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "frequency"
    t.string   "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entry_id"], name: "index_repeaters_on_entry_id"
  end

end