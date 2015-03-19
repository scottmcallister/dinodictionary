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

ActiveRecord::Schema.define(version: 20150319170310) do

  create_table "dinosaurs", force: :cascade do |t|
    t.string   "name"
    t.string   "era"
    t.string   "diet"
    t.string   "taxonomic_order"
    t.integer  "length"
    t.integer  "height"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "location"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "keywords"
    t.string   "name"
    t.string   "era"
    t.string   "diet"
    t.string   "taxonomic_order"
    t.integer  "min_length"
    t.integer  "max_length"
    t.integer  "min_height"
    t.integer  "max_height"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
