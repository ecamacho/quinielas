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

ActiveRecord::Schema.define(version: 20140708190858) do

  create_table "games", force: true do |t|
    t.datetime "fecha"
    t.integer  "goles_visita"
    t.integer  "goles_local"
    t.boolean  "jugado"
    t.integer  "resultado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "local_id"
    t.integer  "visita_id"
    t.integer  "stage_id"
  end

  add_index "games", ["stage_id"], name: "index_games_on_stage_id"

  create_table "groups", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quinielas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "quinielas", ["user_id"], name: "index_quinielas_on_user_id"

  create_table "stages", force: true do |t|
    t.string   "fase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "nombre"
    t.string   "bandera"
    t.string   "abreviatura"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "nombre"
    t.string   "avatar"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_quinielas", force: true do |t|
    t.integer  "puntos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "quiniela_id"
  end

  add_index "usuario_quinielas", ["quiniela_id"], name: "index_usuario_quinielas_on_quiniela_id"
  add_index "usuario_quinielas", ["user_id"], name: "index_usuario_quinielas_on_user_id"

end
