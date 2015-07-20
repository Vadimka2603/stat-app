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

ActiveRecord::Schema.define(version: 20150713130615) do

  create_table "competitions", force: :cascade do |t|
    t.string   "link"
    t.string   "avatar"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "year"
    t.integer  "win"
    t.integer  "draw"
    t.integer  "lose"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seasons", ["team_id"], name: "index_seasons_on_team_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "aasm_state"
    t.integer  "start_date"
    t.integer  "finish_date"
    t.integer  "competition_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tasks", ["competition_id"], name: "index_tasks_on_competition_id"

  create_table "teams", force: :cascade do |t|
    t.string   "logo"
    t.string   "name"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["task_id"], name: "index_teams_on_task_id"

end
