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

ActiveRecord::Schema.define(version: 20161219112403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "components", force: :cascade do |t|
    t.string   "name"
    t.string   "component_type"
    t.integer  "terrain_page_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["terrain_page_id"], name: "index_components_on_terrain_page_id", using: :btree
  end

  create_table "cta", force: :cascade do |t|
    t.string   "label"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gc_free_contents", force: :cascade do |t|
    t.integer  "component_id"
    t.integer  "image_id"
    t.string   "image_position"
    t.string   "text"
    t.integer  "main_title_id"
    t.integer  "cta_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["component_id"], name: "index_gc_free_contents_on_component_id", using: :btree
    t.index ["cta_id"], name: "index_gc_free_contents_on_cta_id", using: :btree
    t.index ["image_id"], name: "index_gc_free_contents_on_image_id", using: :btree
    t.index ["main_title_id"], name: "index_gc_free_contents_on_main_title_id", using: :btree
  end

  create_table "gc_key_points", force: :cascade do |t|
    t.integer  "component_id"
    t.integer  "main_title_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["component_id"], name: "index_gc_key_points_on_component_id", using: :btree
    t.index ["main_title_id"], name: "index_gc_key_points_on_main_title_id", using: :btree
  end

  create_table "general_infos", force: :cascade do |t|
    t.string   "phone_number"
    t.string   "facebook_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "key_points", force: :cascade do |t|
    t.string   "text"
    t.integer  "secondary_title_id"
    t.integer  "image_id"
    t.integer  "gc_key_point_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["gc_key_point_id"], name: "index_key_points_on_gc_key_point_id", using: :btree
    t.index ["image_id"], name: "index_key_points_on_image_id", using: :btree
    t.index ["secondary_title_id"], name: "index_key_points_on_secondary_title_id", using: :btree
  end

  create_table "main_titles", force: :cascade do |t|
    t.string   "text"
    t.integer  "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sc_home_heads", force: :cascade do |t|
    t.integer  "component_id"
    t.string   "selected_layout"
    t.integer  "cta_id"
    t.integer  "image_id"
    t.integer  "main_title_id"
    t.integer  "secondary_title_id"
    t.string   "selected_news"
    t.string   "selected_programs"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["component_id"], name: "index_sc_home_heads_on_component_id", using: :btree
    t.index ["cta_id"], name: "index_sc_home_heads_on_cta_id", using: :btree
    t.index ["image_id"], name: "index_sc_home_heads_on_image_id", using: :btree
    t.index ["main_title_id"], name: "index_sc_home_heads_on_main_title_id", using: :btree
    t.index ["secondary_title_id"], name: "index_sc_home_heads_on_secondary_title_id", using: :btree
  end

  create_table "secondary_titles", force: :cascade do |t|
    t.string   "text"
    t.integer  "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terrain_pages", force: :cascade do |t|
    t.string   "name"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "components", "terrain_pages"
  add_foreign_key "gc_free_contents", "components"
  add_foreign_key "gc_free_contents", "cta", column: "cta_id"
  add_foreign_key "gc_free_contents", "images"
  add_foreign_key "gc_free_contents", "main_titles"
  add_foreign_key "gc_key_points", "components"
  add_foreign_key "gc_key_points", "main_titles"
  add_foreign_key "key_points", "gc_key_points"
  add_foreign_key "key_points", "images"
  add_foreign_key "key_points", "secondary_titles"
  add_foreign_key "sc_home_heads", "components"
  add_foreign_key "sc_home_heads", "cta", column: "cta_id"
  add_foreign_key "sc_home_heads", "images"
  add_foreign_key "sc_home_heads", "main_titles"
  add_foreign_key "sc_home_heads", "secondary_titles"
end
