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

ActiveRecord::Schema[7.1].define(version: 2023_11_15_030439) do
  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "location"
    t.string "category"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "invites", force: :cascade do |t|
    t.integer "status"
    t.integer "event_id", null: false
    t.integer "host_id", null: false
    t.integer "guest_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_invites_on_event_id"
    t.index ["guest_id"], name: "index_invites_on_guest_id"
    t.index ["host_id"], name: "index_invites_on_host_id"
  end

  create_table "responses", force: :cascade do |t|
    t.string "message"
    t.boolean "result"
    t.integer "responser_id", null: false
    t.integer "event_id", null: false
    t.integer "receiver_id", null: false
    t.integer "invite_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_responses_on_event_id"
    t.index ["invite_id"], name: "index_responses_on_invite_id"
    t.index ["receiver_id"], name: "index_responses_on_receiver_id"
    t.index ["responser_id"], name: "index_responses_on_responser_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_user_events_on_event_id"
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "events", "users"
  add_foreign_key "invites", "events"
  add_foreign_key "invites", "users", column: "guest_id"
  add_foreign_key "invites", "users", column: "host_id"
  add_foreign_key "responses", "events"
  add_foreign_key "responses", "invites"
  add_foreign_key "responses", "users", column: "receiver_id"
  add_foreign_key "responses", "users", column: "responser_id"
  add_foreign_key "user_events", "events"
  add_foreign_key "user_events", "users"
end
