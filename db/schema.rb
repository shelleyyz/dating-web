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

ActiveRecord::Schema.define(version: 2018_08_06_123700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer "api_id"
    t.text "category"
    t.integer "score"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxes", force: :cascade do |t|
    t.integer "sender_id"
    t.text "content"
    t.integer "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "liker_id"
    t.integer "likee_id"
    t.text "relationship_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["likee_id"], name: "index_relationships_on_likee_id"
    t.index ["liker_id", "likee_id"], name: "index_relationships_on_liker_id_and_likee_id", unique: true
    t.index ["liker_id"], name: "index_relationships_on_liker_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "interests"
    t.text "email"
    t.text "image"
    t.text "gender"
    t.date "dob"
    t.text "location"
    t.text "language"
    t.text "bio"
    t.boolean "admin"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.float "latitude"
    t.float "longitude"
  end

end
