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

ActiveRecord::Schema.define(version: 20150412023457) do

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre",                 limit: 255
    t.string   "giro",                   limit: 255
    t.string   "forma_juridica",         limit: 255
    t.string   "tamaño",                 limit: 255
    t.string   "rango",                  limit: 255
    t.integer  "capital_inicial",        limit: 4
    t.integer  "roi",                    limit: 4
    t.integer  "longitud",               limit: 4
    t.integer  "latitud",                limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "empresas", ["email"], name: "index_empresas_on_email", unique: true, using: :btree
  add_index "empresas", ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true, using: :btree

  create_table "investors", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "edad",       limit: 4
    t.string   "perfil",     limit: 255
    t.string   "sector",     limit: 255
    t.integer  "resultado",  limit: 4
    t.integer  "latitud",    limit: 4
    t.integer  "longitud",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "id_investor", limit: 4
    t.string   "tag",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre",                 limit: 255
    t.integer  "edad",                   limit: 4
    t.string   "perfil",                 limit: 255
    t.string   "sector_laboral",         limit: 255
    t.string   "resultado",              limit: 255
    t.integer  "latitud",                limit: 4
    t.integer  "longitud",               limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
