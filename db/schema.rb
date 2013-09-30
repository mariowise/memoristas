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

ActiveRecord::Schema.define(version: 0) do

  create_table "carreras", primary_key: "id_carrera", force: true do |t|
    t.string "nombre_carrera",      limit: 32
    t.string "coordinador_carrera", limit: 32
  end

  create_table "memoria_avances", primary_key: "id_memoria_avance", force: true do |t|
    t.integer   "id_memoria",                null: false
    t.integer   "porcentaje_memoria_avance"
    t.timestamp "timestamp_memoria_avance",  null: false
  end

  add_index "memoria_avances", ["id_memoria"], name: "fk_relationship_2", using: :btree

  create_table "memoria_estados", primary_key: "id_memoria_estado", force: true do |t|
    t.string "nombre_memoria_estado", limit: 16
  end

  create_table "memoria_historial_estados", id: false, force: true do |t|
    t.integer   "id_memoria_estado",                  null: false
    t.integer   "id_memoria",                         null: false
    t.timestamp "timestamp_memoria_historial_estado", null: false
  end

  add_index "memoria_historial_estados", ["id_memoria"], name: "fk_relationship_7", using: :btree

  create_table "memoria_observacions", primary_key: "id_memoria_observacion", force: true do |t|
    t.integer   "id_memoria",                      null: false
    t.text      "observacion_memoria_observacion"
    t.timestamp "timestamp_memoria_observacion",   null: false
  end

  add_index "memoria_observacions", ["id_memoria"], name: "fk_relationship_4", using: :btree

  create_table "memorias", primary_key: "id_memoria", force: true do |t|
    t.string "run_persona",     limit: 12, null: false
    t.string "mem_run_persona", limit: 12, null: false
    t.string "titulo_memoria",  limit: 64
  end

  add_index "memorias", ["mem_run_persona"], name: "fk_relationship_8", using: :btree
  add_index "memorias", ["run_persona"], name: "fk_relationship_5", using: :btree

  create_table "memoristas", primary_key: "run_persona", force: true do |t|
    t.integer "id_carrera", null: false
  end

  add_index "memoristas", ["id_carrera"], name: "fk_relationship_1", using: :btree

  create_table "personas", primary_key: "run_persona", force: true do |t|
    t.string "nombre_persona",   limit: 32
    t.string "apellido_persona", limit: 32
    t.string "email_persona",    limit: 32
    t.string "fono_persona",     limit: 32
  end

  create_table "profesors", primary_key: "run_persona", force: true do |t|
  end

  create_table "usuarios", primary_key: "run_persona", force: true do |t|
    t.string "pass_usuario", limit: 128
  end

end
