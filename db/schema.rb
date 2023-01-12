# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_12_220101) do
  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.string "question_1"
    t.string "answer_1"
    t.string "question_2"
    t.string "answer_2"
    t.string "question_3"
    t.string "answer_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "user_id"
    t.string "emoji"
    t.string "mood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "username"
    t.integer "age"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vitals", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "heart_rate"
    t.decimal "wrist_temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
