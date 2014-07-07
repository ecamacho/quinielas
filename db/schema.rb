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

ActiveRecord::Schema.define(version: 20140704180702) do

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
    t.string   "creador"
    t.integer  "id_quiniela"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "usuario"
    t.string   "quiniela"
    t.integer  "id_quiniela"
    t.integer  "usuario_id"
    t.integer  "puntos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
