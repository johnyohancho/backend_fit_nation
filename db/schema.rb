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

ActiveRecord::Schema.define(version: 2019_06_12_232249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_snaps", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "steps"
    t.decimal "weight"
    t.integer "height"
    t.decimal "bmi"
    t.decimal "pbf"
    t.string "img"
    t.integer "calories"
    t.integer "protein"
    t.integer "carbs"
    t.integer "fat"
    t.integer "sugar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "meal_type"
    t.date "date"
    t.datetime "time"
    t.integer "calories"
    t.integer "weight"
    t.integer "protein"
    t.integer "carbs"
    t.integer "fat"
    t.integer "sugar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "user_settings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "set_calories"
    t.integer "set_steps"
    t.decimal "set_protein_percent"
    t.decimal "set_carb_percent"
    t.decimal "set_fat_percent"
    t.integer "set_protein_amount"
    t.integer "set_carb_amount"
    t.integer "set_fat_amount"
    t.integer "set_sugar_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_workouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "workout_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sets"
    t.integer "reps"
    t.string "workout_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "name"
    t.text "description"
    t.string "gender"
    t.integer "age"
    t.integer "years_exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
