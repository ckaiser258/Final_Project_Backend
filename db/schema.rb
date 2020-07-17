# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_17_021024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "year"
    t.string "image"
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_athletes_on_team_id"
    t.index ["user_id"], name: "index_athletes_on_user_id"
  end

  create_table "injuries", force: :cascade do |t|
    t.string "site"
    t.string "description"
    t.string "date"
    t.bigint "athlete_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "severity"
    t.index ["athlete_id"], name: "index_injuries_on_athlete_id"
    t.index ["team_id"], name: "index_injuries_on_team_id"
  end

  create_table "stats", force: :cascade do |t|
    t.string "test_name"
    t.string "result"
    t.string "date"
    t.bigint "athlete_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["athlete_id"], name: "index_stats_on_athlete_id"
    t.index ["team_id"], name: "index_stats_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "athletes", "teams"
  add_foreign_key "athletes", "users"
  add_foreign_key "injuries", "athletes"
  add_foreign_key "injuries", "teams"
  add_foreign_key "stats", "athletes"
  add_foreign_key "stats", "teams"
  add_foreign_key "teams", "users"
end
