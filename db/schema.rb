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

ActiveRecord::Schema.define(version: 20140911192604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.string  "name",        null: false
    t.string  "url"
    t.date    "date",        null: false
    t.integer "campaign_id"
  end

  create_table "campaigns", force: true do |t|
    t.string "name",       null: false
    t.string "start_date", null: false
    t.string "end_date",   null: false
  end

  create_table "days", force: true do |t|
    t.string  "name",        null: false
    t.integer "week_id",     null: false
    t.string  "focus"
    t.integer "campaign_id", null: false
  end

  create_table "weeks", force: true do |t|
    t.integer "campaign_id",  null: false
    t.string  "blog_name"
    t.string  "blog_url"
    t.string  "systemscheck"
  end

end
