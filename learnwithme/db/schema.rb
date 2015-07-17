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

ActiveRecord::Schema.define(version: 20150717021239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_articles", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_articles", ["article_id"], name: "index_course_articles_on_article_id", using: :btree
  add_index "course_articles", ["course_id"], name: "index_course_articles_on_course_id", using: :btree

  create_table "course_images", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_images", ["course_id"], name: "index_course_images_on_course_id", using: :btree
  add_index "course_images", ["image_id"], name: "index_course_images_on_image_id", using: :btree

  create_table "course_videos", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_videos", ["course_id"], name: "index_course_videos_on_course_id", using: :btree
  add_index "course_videos", ["video_id"], name: "index_course_videos_on_video_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.integer  "creator_id"
    t.text     "short_desc"
    t.text     "long_desc"
    t.text     "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "location"
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "course_articles", "articles"
  add_foreign_key "course_articles", "courses"
  add_foreign_key "course_images", "courses"
  add_foreign_key "course_images", "images"
  add_foreign_key "course_videos", "courses"
  add_foreign_key "course_videos", "videos"
end
