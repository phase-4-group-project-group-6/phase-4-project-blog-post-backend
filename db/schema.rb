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

ActiveRecord::Schema[7.0].define(version: 2023_03_30_050845) do
  create_table "authors", force: :cascade do |t|
    t.string "name", null: false
    t.string "image"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "description", null: false
    t.integer "user_id", null: false
    t.integer "user_post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
    t.index ["user_post_id"], name: "index_comments_on_user_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.string "image_url"
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_posts_on_author_id"
  end

  create_table "user_posts", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.string "image_url"
    t.integer "user_id", null: false
    t.integer "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_user_posts_on_post_id"
    t.index ["user_id"], name: "index_user_posts_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "avatar_url"
    t.string "username", null: false
    t.string "email", null: false
    t.string "bio", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "user_posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "authors"
  add_foreign_key "user_posts", "posts"
  add_foreign_key "user_posts", "users"
  add_foreign_key "user_profiles", "users"
end
