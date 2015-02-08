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

ActiveRecord::Schema.define(version: 20150208191847) do

  create_table "barcharts", force: true do |t|
    t.string   "nh_overall"
    t.string   "nl_overall"
    t.string   "nh_nyse"
    t.string   "nl_nyse"
    t.string   "nh_nasdaq"
    t.string   "nl_nasdaq"
    t.string   "nh_etfs"
    t.string   "nl_etfs"
    t.string   "nh_l10"
    t.string   "nl_l10"
    t.string   "nh_g100"
    t.string   "nl_g100"
    t.string   "nh_l100"
    t.string   "nl_l100"
    t.date     "quote_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nh_amex"
    t.string   "nl_amex"
    t.string   "nh_g10"
    t.string   "nl_g10"
  end

end
