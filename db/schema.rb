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

ActiveRecord::Schema.define(version: 20140831143849) do

  create_table "pages", force: true do |t|
    t.integer  "subject_id"
    t.string   "name",       limit: 25
    t.integer  "position"
    t.boolean  "visible",               default: false
    t.integer  "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["permalink"], name: "index_pages_on_permalink", using: :btree
  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 30
    t.string   "sex"
    t.boolean  "visible",               default: true
    t.integer  "age"
    t.string   "state"
    t.string   "address"
    t.string   "hobbies"
    t.string   "profession"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.integer  "page_id"
    t.string   "name",         limit: 25
    t.integer  "position"
    t.boolean  "visible",                 default: false
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string   "name",       limit: 25
    t.integer  "position"
    t.boolean  "visible",               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 25
    t.string   "email",                 default: "", null: false
    t.string   "password",   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
