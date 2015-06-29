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

ActiveRecord::Schema.define(version: 20150626214903) do

  create_table "settings", force: :cascade do |t|
    t.boolean  "show_votes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "theme_1"
    t.string   "theme_2"
    t.string   "theme_3"
    t.string   "theme_4"
    t.string   "theme_5"
    t.boolean  "show_all_ideas"
  end

  create_table "theme1s", force: :cascade do |t|
    t.text     "innovation"
    t.text     "reason"
    t.string   "url"
    t.string   "image"
    t.string   "video"
    t.integer  "innovation_votes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theme2s", force: :cascade do |t|
    t.text     "innovation"
    t.text     "reason"
    t.string   "url"
    t.string   "image"
    t.string   "video"
    t.integer  "innovation_votes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theme3s", force: :cascade do |t|
    t.text     "innovation"
    t.text     "reason"
    t.string   "url"
    t.string   "image"
    t.string   "video"
    t.integer  "innovation_votes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theme4s", force: :cascade do |t|
    t.text     "innovation"
    t.text     "reason"
    t.string   "url"
    t.string   "image"
    t.string   "video"
    t.integer  "innovation_votes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theme5s", force: :cascade do |t|
    t.text     "innovation"
    t.text     "reason"
    t.string   "url"
    t.string   "image"
    t.string   "video"
    t.integer  "innovation_votes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.boolean  "admin"
    t.string   "email"
    t.integer  "user_votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
