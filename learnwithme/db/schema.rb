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

ActiveRecord::Schema.define(version: 20150717004513) do

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

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "course_images", "courses"
  add_foreign_key "course_images", "images"
  add_foreign_key "course_videos", "courses"
  add_foreign_key "course_videos", "videos"
end
