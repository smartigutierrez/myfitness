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

ActiveRecord::Schema[7.0].define(version: 2023_08_10_212758) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.string "video"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "exercise1"
    t.string "exercise2"
    t.string "exercise3"
    t.string "exercise4"
    t.string "exercise5"
    t.string "exercise6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.float "exercise1_weight"
    t.integer "exercise1_reps"
    t.integer "exercise1_sets"
    t.float "exercise2_weight"
    t.integer "exercise2_reps"
    t.integer "exercise2_sets"
    t.float "exercise3_weight"
    t.integer "exercise3_reps"
    t.integer "exercise3_sets"
    t.float "exercise4_weight"
    t.integer "exercise4_reps"
    t.integer "exercise4_sets"
    t.float "exercise5_weight"
    t.integer "exercise5_reps"
    t.integer "exercise5_sets"
    t.float "exercise6_weight"
    t.integer "exercise6_reps"
    t.integer "exercise6_sets"
    t.string "cardio"
    t.string "round_time"
    t.integer "cardio_sets"
  end

end
