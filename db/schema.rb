# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151211051659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breed_mixes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "dog_id"
    t.integer  "breed_id"
  end

  add_index "breed_mixes", ["breed_id"], name: "index_breed_mixes_on_breed_id", using: :btree
  add_index "breed_mixes", ["dog_id", "breed_id"], name: "index_breed_mixes_on_dog_id_and_breed_id", unique: true, using: :btree
  add_index "breed_mixes", ["dog_id"], name: "index_breed_mixes_on_dog_id", using: :btree

  create_table "breeds", force: :cascade do |t|
    t.string   "name"
    t.integer  "intelligence_level"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "breeds", ["name"], name: "index_breeds_on_name", unique: true, using: :btree

  create_table "color_mixes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "dog_id"
    t.integer  "color_id"
  end

  add_index "color_mixes", ["color_id"], name: "index_color_mixes_on_color_id", using: :btree
  add_index "color_mixes", ["dog_id", "color_id"], name: "index_color_mixes_on_dog_id_and_color_id", unique: true, using: :btree
  add_index "color_mixes", ["dog_id"], name: "index_color_mixes_on_dog_id", using: :btree

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "hex_code"
  end

  add_index "colors", ["name"], name: "index_colors_on_name", unique: true, using: :btree

  create_table "dog_photos", force: :cascade do |t|
    t.string   "url"
    t.string   "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "dog_id"
  end

  add_index "dog_photos", ["dog_id"], name: "index_dog_photos_on_dog_id", using: :btree

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.date     "dob"
    t.integer  "size"
    t.integer  "energy_level"
    t.integer  "child_friendliness"
    t.integer  "pet_friendliness"
    t.boolean  "house_trained"
    t.integer  "behavior_train_level"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "location_id"
    t.integer  "shelter_id"
    t.string   "gender"
    t.string   "image"
  end

  add_index "dogs", ["location_id"], name: "index_dogs_on_location_id", using: :btree
  add_index "dogs", ["shelter_id"], name: "index_dogs_on_shelter_id", using: :btree

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "dog_id"
  end

  add_index "favorites", ["dog_id"], name: "index_favorites_on_dog_id", using: :btree
  add_index "favorites", ["user_id", "dog_id"], name: "index_favorites_on_user_id_and_dog_id", unique: true, using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["city", "state"], name: "index_locations_on_city_and_state", unique: true, using: :btree

  create_table "shelters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "location_id"
  end

  add_index "shelters", ["location_id"], name: "index_shelters_on_location_id", using: :btree
  add_index "shelters", ["name", "location_id"], name: "index_shelters_on_name_and_location_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "location_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["location_id"], name: "index_users_on_location_id", using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "breed_mixes", "breeds"
  add_foreign_key "breed_mixes", "dogs"
  add_foreign_key "color_mixes", "colors"
  add_foreign_key "color_mixes", "dogs"
  add_foreign_key "dog_photos", "dogs"
  add_foreign_key "dogs", "locations"
  add_foreign_key "dogs", "shelters"
  add_foreign_key "favorites", "dogs"
  add_foreign_key "favorites", "users"
  add_foreign_key "shelters", "locations"
  add_foreign_key "users", "locations"
end
