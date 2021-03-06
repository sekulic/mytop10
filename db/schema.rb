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

ActiveRecord::Schema.define(version: 20140718190555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photo_comments", force: true do |t|
    t.string   "name"
    t.text     "comment"
    t.integer  "photo_post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photo_posts", force: true do |t|
    t.string   "title"
    t.text     "text10"
    t.text     "text9"
    t.text     "text8"
    t.text     "text7"
    t.text     "text6"
    t.text     "text5"
    t.text     "text4"
    t.text     "text3"
    t.text     "text2"
    t.text     "text1"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo10_file_name"
    t.string   "photo10_content_type"
    t.integer  "photo10_file_size"
    t.datetime "photo10_updated_at"
    t.string   "photo9_file_name"
    t.string   "photo9_content_type"
    t.integer  "photo9_file_size"
    t.datetime "photo9_updated_at"
    t.string   "photo8_file_name"
    t.string   "photo8_content_type"
    t.integer  "photo8_file_size"
    t.datetime "photo8_updated_at"
    t.string   "photo7_file_name"
    t.string   "photo7_content_type"
    t.integer  "photo7_file_size"
    t.datetime "photo7_updated_at"
    t.string   "photo6_file_name"
    t.string   "photo6_content_type"
    t.integer  "photo6_file_size"
    t.datetime "photo6_updated_at"
    t.string   "photo5_file_name"
    t.string   "photo5_content_type"
    t.integer  "photo5_file_size"
    t.datetime "photo5_updated_at"
    t.string   "photo4_file_name"
    t.string   "photo4_content_type"
    t.integer  "photo4_file_size"
    t.datetime "photo4_updated_at"
    t.string   "photo3_file_name"
    t.string   "photo3_content_type"
    t.integer  "photo3_file_size"
    t.datetime "photo3_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size"
    t.datetime "photo2_updated_at"
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size"
    t.datetime "photo1_updated_at"
  end

  create_table "subcategories", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "video_comments", force: true do |t|
    t.string   "name"
    t.text     "comment"
    t.integer  "video_post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_posts", force: true do |t|
    t.string   "title"
    t.text     "text10"
    t.text     "text9"
    t.text     "text8"
    t.text     "text7"
    t.text     "text6"
    t.text     "text5"
    t.text     "text4"
    t.text     "text3"
    t.text     "text2"
    t.text     "text1"
    t.text     "link10"
    t.text     "link9"
    t.text     "link8"
    t.text     "link7"
    t.text     "link6"
    t.text     "link5"
    t.text     "link4"
    t.text     "link3"
    t.text     "link2"
    t.text     "link1"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
