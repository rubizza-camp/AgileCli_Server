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

ActiveRecord::Schema.define(version: 2019_08_28_061755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.date "date"
    t.integer "frequency"
    t.time "time"
    t.integer "event_type"
    t.index ["project_id"], name: "index_events_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.index ["project_id"], name: "index_tickets_on_project_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "userprojects", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "github_login", null: false
    t.string "node"
    t.string "email"
    t.index ["github_login"], name: "index_users_on_github_login", unique: true
  end

  add_foreign_key "events", "projects"
  add_foreign_key "tickets", "projects"
  add_foreign_key "tickets", "users"
end
