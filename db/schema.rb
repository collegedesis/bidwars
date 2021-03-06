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

ActiveRecord::Schema.define(:version => 20130204025819) do

  create_table "bids", :force => true do |t|
    t.integer  "dj_id"
    t.integer  "competition_id"
    t.text     "offering"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "competitions", :force => true do |t|
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
    t.string   "name"
    t.string   "twitter"
  end

  add_index "competitions", ["email"], :name => "index_competitions_on_email", :unique => true
  add_index "competitions", ["reset_password_token"], :name => "index_competitions_on_reset_password_token", :unique => true

  create_table "djs", :force => true do |t|
    t.string   "stage_name"
    t.string   "full_name"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "soundcloud"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "votes", :force => true do |t|
    t.integer  "bid_id"
    t.string   "submitted_by_ip"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "twitter"
  end

end
