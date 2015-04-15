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

ActiveRecord::Schema.define(version: 20150327144835) do

  create_table "retsepts", force: :cascade do |t|
    t.string   "luokka",     limit: 255
    t.string   "nimi",       limit: 255
    t.text     "kuvaus",     limit: 65535
    t.text     "ainekset",   limit: 65535
    t.text     "ohjeet",     limit: 65535
    t.string   "aika",       limit: 255
    t.string   "vaativuus",  limit: 255
    t.string   "user",       limit: 255
    t.string   "kuva",       limit: 255
    t.string   "tieto1",     limit: 255
    t.string   "tieto2",     limit: 255
    t.string   "tieto3",     limit: 255
    t.string   "tieto4",     limit: 255
    t.string   "tieto5",     limit: 255
    t.string   "tieto6",     limit: 255
    t.string   "tieto7",     limit: 255
    t.string   "tieto8",     limit: 255
    t.string   "tieto9",     limit: 255
    t.string   "tieto0",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "shakes", force: :cascade do |t|
    t.string   "nimi",       limit: 255
    t.text     "kuvaus",     limit: 65535
    t.decimal  "arvo",                     precision: 10
    t.string   "juoppo",     limit: 255
    t.string   "asia1",      limit: 255
    t.string   "asia2",      limit: 255
    t.string   "asia3",      limit: 255
    t.string   "asia4",      limit: 255
    t.string   "asia5",      limit: 255
    t.string   "asia6",      limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "shakes_users", id: false, force: :cascade do |t|
    t.integer "shakes_id",   limit: 4
    t.integer "users_id",    limit: 4
    t.decimal "arvo",                  precision: 10
    t.decimal "oravannahat",           precision: 10
  end

  create_table "users", force: :cascade do |t|
    t.string   "etunimi",                limit: 255,                default: "",      null: false
    t.string   "sukunimi",               limit: 255,                default: "",      null: false
    t.string   "email",                  limit: 255,                default: "",      null: false
    t.string   "encrypted_password",     limit: 255,                default: "",      null: false
    t.string   "kotikunta",              limit: 255,                default: "",      null: false
    t.string   "puhelin",                limit: 255,                default: "+358 "
    t.string   "metsastajanumero",       limit: 255,                default: "",      null: false
    t.boolean  "ayy_jasen",              limit: 1,                  default: false,   null: false
    t.boolean  "muussa_seurassa",        limit: 1,                  default: false,   null: false
    t.boolean  "hallituksessa",          limit: 1,                  default: false,   null: false
    t.boolean  "avaimellinen",           limit: 1,                  default: false,   null: false
    t.decimal  "oravannahat",                        precision: 10, default: 0,       null: false
    t.string   "muu1",                   limit: 255
    t.string   "muu2",                   limit: 255
    t.string   "muu3",                   limit: 255
    t.string   "muu4",                   limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,                  default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "failed_attempts",        limit: 4,                  default: 0,       null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "vittuilus", force: :cascade do |t|
    t.string   "user_nimi",  limit: 255
    t.text     "teksti",     limit: 65535
    t.integer  "retsept_id", limit: 4
    t.decimal  "arvostus",                 precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

end
