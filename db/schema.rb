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

ActiveRecord::Schema.define(version: 20141119124758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consulta", force: true do |t|
    t.string   "pregunta"
    t.string   "respuesta"
    t.integer  "publicacion_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oferta", force: true do |t|
    t.string   "necesidad"
    t.float    "monto"
    t.integer  "publicacion_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publicacions", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "imagen"
    t.string   "categoria"
    t.datetime "vencimiento"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "titular_tarjeta"
    t.string   "numero_tarjeta"
    t.date     "vencimiento_tarjeta"
    t.boolean  "masculino",              default: false
    t.boolean  "mayor_18"
    t.string   "localidad"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
