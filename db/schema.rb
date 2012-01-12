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

ActiveRecord::Schema.define(:version => 20120112213909) do

  create_table "app_features", :force => true do |t|
    t.integer  "app_id"
    t.integer  "feature_id"
    t.integer  "feature_status_id"
    t.integer  "source_id"
    t.string   "name"
    t.text     "description",       :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "app_products", :force => true do |t|
    t.integer  "app_id"
    t.integer  "product_id"
    t.integer  "min_appversion_id"
    t.integer  "max_appversion_id"
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

# Could not dump table "appdata" because of following StandardError
#   Unknown type '' for column 'FunctionalArea'

  create_table "appload", :force => true do |t|
    t.string  "FunctionalArea", :limit => 30
    t.string  "FeatureID",      :limit => 10
    t.string  "inEvergreen",    :limit => 3
    t.string  "inKoha",         :limit => 3
    t.string  "FeatureName",    :limit => 200
    t.text    "FeatureDesc"
    t.text    "FeatureEG"
    t.text    "FeatureKoha"
    t.string  "Source",         :limit => 30
    t.string  "Ref",            :limit => 30
    t.string  "Notes",          :limit => 10
    t.integer "cat_id"
  end

  create_table "apps", :force => true do |t|
    t.string   "name"
    t.text     "description", :limit => 255
    t.string   "url"
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
    t.text     "description",         :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "vendor_id"
    t.string   "name"
    t.text     "description", :limit => 255
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "auth_token"
    t.boolean  "is_admin"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.text     "description", :limit => 255
    t.string   "url"
    t.string   "phone"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
