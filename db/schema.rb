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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110828220604) do

  create_table "app_features", :force => true do |t|
    t.integer  "app_id"
    t.integer  "feature_id"
    t.integer  "feature_status_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "app_products", :force => true do |t|
    t.integer  "app_id"
    t.integer  "product_id"
    t.integer  "min_app_version_id"
    t.integer  "max_app_version_id"
    t.text     "whoisusing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "app_versions", :force => true do |t|
    t.integer  "app_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "apps", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "URL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feature_categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feature_statuses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", :force => true do |t|
    t.integer  "feature_category_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "vendor_id"
    t.string   "name"
    t.string   "description"
    t.string   "URL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "URL"
    t.string   "phone"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
