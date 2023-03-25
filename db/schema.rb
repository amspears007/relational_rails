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

ActiveRecord::Schema.define(version: 2023_03_23_013626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "disposition"
    t.boolean "has_job"
    t.string "number_of_children"
    t.bigint "sitcom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sitcom_id"], name: "index_characters_on_sitcom_id"
  end

  create_table "sitcoms", force: :cascade do |t|
    t.string "name"
    t.boolean "streaming"
    t.integer "number_of_seasons"
    t.integer "year_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "sitcoms"
end
