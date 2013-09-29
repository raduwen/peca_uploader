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

ActiveRecord::Schema.define(version: 20130929073558) do

  create_table "uploads", force: true do |t|
    t.string   "filename"
    t.string   "ext"
    t.string   "comment"
    t.string   "ip"
    t.integer  "view_count"
    t.binary   "data",         limit: 5242880
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "content_type"
  end

end
