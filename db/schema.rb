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

ActiveRecord::Schema.define(version: 20180814184054) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "points"
    t.integer "stamina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "hydrants", force: :cascade do |t|
    t.integer "dog_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_hydrants_on_dog_id"
  end

  create_table "visits", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "hydrant_id"
    t.integer "stamina_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_visits_on_dog_id"
    t.index ["hydrant_id"], name: "index_visits_on_hydrant_id"
  end

end
