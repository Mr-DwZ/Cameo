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

ActiveRecord::Schema.define(version: 20160309120812) do

  create_table "codes", force: :cascade do |t|
    t.text     "code_block"
    t.integer  "language"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "examinee_id"
  end

  add_index "codes", ["examinee_id"], name: "index_codes_on_examinee_id"

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
    t.integer  "duration"
    t.datetime "begin_time"
    t.integer  "total_score"
    t.integer  "problem_number"
    t.integer  "examiner_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "exams", ["examiner_id"], name: "index_exams_on_examiner_id"

  create_table "questions", force: :cascade do |t|
    t.text     "description"
    t.text     "input"
    t.text     "output"
    t.text     "sample_input"
    t.text     "sample_output"
    t.text     "hint"
    t.text     "test_input"
    t.text     "test_output"
    t.integer  "exam_id"
    t.integer  "examiner_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "questions", ["exam_id"], name: "index_questions_on_exam_id"
  add_index "questions", ["examiner_id"], name: "index_questions_on_examiner_id"

  create_table "results", force: :cascade do |t|
    t.integer  "exam_id"
    t.integer  "examinee_id"
    t.integer  "score"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "results", ["exam_id"], name: "index_results_on_exam_id"
  add_index "results", ["examinee_id"], name: "index_results_on_examinee_id"

end
