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

ActiveRecord::Schema.define(version: 20180128205847) do

  create_table "candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "geo_location"
    t.string   "telephone"
    t.string   "email"
    t.string   "street"
    t.string   "city"
    t.string   "county"
    t.string   "country"
    t.string   "postcode"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "education_id"
    t.string   "linkedin"
    t.string   "github"
    t.integer  "pipeline_status_id"
    t.index ["education_id"], name: "index_candidates_on_education_id"
    t.index ["pipeline_status_id"], name: "index_candidates_on_pipeline_status_id"
  end

  create_table "educations", force: :cascade do |t|
    t.integer  "level"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "qualification"
  end

  create_table "pipeline_statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
