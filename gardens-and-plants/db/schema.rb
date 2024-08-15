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

ActiveRecord::Schema[7.1].define(version: 2024_08_15_151901) do
  create_table "chores", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "completions", force: :cascade do |t|
    t.integer "plant_id", null: false
    t.integer "chore_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chore_id"], name: "index_completions_on_chore_id"
    t.index ["plant_id"], name: "index_completions_on_plant_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "banner_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "garden_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_plants_on_garden_id"
  end

  add_foreign_key "completions", "chores"
  add_foreign_key "completions", "plants"
  add_foreign_key "plants", "gardens"
end
