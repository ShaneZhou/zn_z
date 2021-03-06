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

ActiveRecord::Schema.define(version: 20180202064601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: :cascade do |t|
    t.string "title", null: false
    t.text "body"
    t.bigint "blog_setting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_setting_id"], name: "index_blog_posts_on_blog_setting_id"
    t.index ["title"], name: "index_blog_posts_on_title"
  end

  create_table "blog_settings", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blog_settings_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "blog_posts", "blog_settings"
  add_foreign_key "blog_settings", "users"
end
