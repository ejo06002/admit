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

ActiveRecord::Schema.define(:version => 20131029204501) do

  create_table "advisors", :force => true do |t|
    t.string   "username"
    t.string   "program"
    t.string   "country"
    t.integer  "gmat_total"
    t.integer  "gmat_quant"
    t.integer  "gmat_verb"
    t.string   "undergrad"
    t.integer  "gpa"
    t.string   "industry1"
    t.string   "industry2"
    t.string   "industry3"
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
  end

  add_index "advisors", ["email"], :name => "index_advisors_on_email", :unique => true
  add_index "advisors", ["reset_password_token"], :name => "index_advisors_on_reset_password_token", :unique => true

  create_table "applicants", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
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
  end

  add_index "applicants", ["email"], :name => "index_applicants_on_email", :unique => true
  add_index "applicants", ["reset_password_token"], :name => "index_applicants_on_reset_password_token", :unique => true

  create_table "questions", :force => true do |t|
    t.integer  "applicant_id"
    t.string   "subject"
    t.text     "q_content"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
