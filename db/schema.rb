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

ActiveRecord::Schema.define(version: 2018_08_22_115215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.float "longitude"
    t.float "latitude"
    t.boolean "meeting_point"
    t.string "category"
    t.bigint "tour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "starting_time"
    t.datetime "ending_time"
    t.time "start_time"
    t.time "end_time"
    t.index ["tour_id"], name: "index_activities_on_tour_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "status"
    t.bigint "group_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["group_id"], name: "index_invitations_on_group_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "end_date"
    t.date "start_date"
    t.index ["group_id"], name: "index_tours_on_group_id"
    t.index ["user_id"], name: "index_tours_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_picture"
    t.string "bio"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "tours"
  add_foreign_key "invitations", "groups"
  add_foreign_key "invitations", "users"
  add_foreign_key "tours", "groups"
  add_foreign_key "tours", "users"
end
