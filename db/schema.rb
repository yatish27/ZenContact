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

ActiveRecord::Schema.define(version: 20160311235329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "location"
    t.integer  "number_of_connections"
    t.string   "country"
    t.string   "industry"
    t.text     "summary"
    t.hstore   "projects",                                        array: true
    t.hstore   "education",                                       array: true
    t.hstore   "group",                                           array: true
    t.string   "picture"
    t.string   "linkedin_url",                       null: false
    t.string   "websites",              default: [],              array: true
    t.string   "languages",             default: [],              array: true
    t.string   "skills",                default: [],              array: true
    t.hstore   "certifications",                                  array: true
    t.hstore   "organizations",                                   array: true
    t.hstore   "past_companies",                                  array: true
    t.hstore   "current_companies",                               array: true
    t.hstore   "recommended_visitors",                            array: true
    t.integer  "project_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "contacts", ["project_id"], name: "index_contacts_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",                                 null: false
    t.integer  "total_contacts_count",     default: 0, null: false
    t.integer  "remaining_contacts_count", default: 0, null: false
    t.integer  "status",                   default: 0, null: false
    t.integer  "user_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "input_file_name"
    t.string   "input_content_type"
    t.integer  "input_file_size"
    t.datetime "input_updated_at"
    t.string   "output_file_name"
    t.string   "output_content_type"
    t.integer  "output_file_size"
    t.datetime "output_updated_at"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

end
