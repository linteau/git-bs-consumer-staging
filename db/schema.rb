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

ActiveRecord::Schema.define(:version => 20120807185432) do

  create_table "consumers", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.integer  "stripe_customer_id"
    t.string   "title"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state_province"
    t.string   "postal_code"
    t.string   "country"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email1"
    t.string   "email2"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "partners", :force => true do |t|
    t.string   "partner_name"
    t.string   "website"
    t.text     "description"
    t.string   "title"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state_province"
    t.string   "postal_code"
    t.string   "country"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "tax_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "product_id"
    t.string   "link"
    t.text     "summary"
    t.string   "title"
    t.datetime "updated"
    t.string   "brand"
    t.string   "color"
    t.string   "condition"
    t.integer  "gtin"
    t.string   "image_link"
    t.string   "mpn"
    t.string   "google_product_category"
    t.string   "bs_google_product_category"
    t.string   "product_type"
    t.string   "size"
    t.string   "gender"
    t.string   "age_group"
    t.integer  "item_group_id"
    t.decimal  "price"
    t.decimal  "sale_price"
    t.string   "sale_price_effective_date"
    t.decimal  "bs_ask"
    t.string   "availability"
    t.integer  "shipping_id"
    t.string   "adwords_grouping"
    t.string   "adwords_redirect"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "partner_id"
    t.datetime "bs_sale_date"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
