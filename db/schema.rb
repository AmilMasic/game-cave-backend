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

ActiveRecord::Schema.define(version: 2021_05_17_171523) do

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.datetime "release_date"
    t.boolean "completed"
    t.string "genre"
    t.string "description"
    t.string "platform"
    t.integer "publisher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["publisher_id"], name: "index_games_on_publisher_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.integer "established"
    t.string "gamestore"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
