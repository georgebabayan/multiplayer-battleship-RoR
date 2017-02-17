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

ActiveRecord::Schema.define(version: 20170217201556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "funs", force: :cascade do |t|
    t.text     "board1"
    t.text     "board2"
    t.text     "board1_display"
    t.text     "board2_display"
    t.integer  "turn"
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "game_status"
    t.index ["player1_id"], name: "index_funs_on_player1_id", using: :btree
    t.index ["player2_id"], name: "index_funs_on_player2_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "text"
    t.integer  "user_id"
    t.integer  "fun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fun_id"], name: "index_messages_on_fun_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "game_lost"
    t.integer  "game_won"
  end

  add_foreign_key "messages", "funs"
  add_foreign_key "messages", "users"
end
