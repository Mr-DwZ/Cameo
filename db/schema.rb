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

ActiveRecord::Schema.define(version: 20160307080629) do

  create_table "examinees", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.integer  "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examiners", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.integer  "age"
    t.integer  "gender"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string   "subject"
    t.time     "duration"
    t.datetime "begin_time"
    t.integer  "total_score"
    t.integer  "problem_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "examinee_id"
    t.integer  "exam_id"
    t.integer  "score"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "results", ["exam_id"], name: "index_results_on_exam_id"
  add_index "results", ["examinee_id"], name: "index_results_on_examinee_id"

end
