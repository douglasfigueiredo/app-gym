# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_12_193837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercicio_repeticaos", force: :cascade do |t|
    t.string "nome"
    t.integer "min"
    t.integer "max"
    t.string "genero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercicio_series", force: :cascade do |t|
    t.string "nome"
    t.integer "quantidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercicios", force: :cascade do |t|
    t.string "nome"
    t.string "tutorial"
    t.bigint "tipo_de_exercicio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tipo_de_exercicio_id"], name: "index_exercicios_on_tipo_de_exercicio_id"
  end

  create_table "rotina_de_treinos", force: :cascade do |t|
    t.bigint "rotina_id", null: false
    t.bigint "treino_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rotina_id"], name: "index_rotina_de_treinos_on_rotina_id"
    t.index ["treino_id"], name: "index_rotina_de_treinos_on_treino_id"
  end

  create_table "rotinas", force: :cascade do |t|
    t.string "nome"
    t.integer "quantidade_dias"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "genero"
  end

  create_table "tipo_de_exercicio_do_treinos", force: :cascade do |t|
    t.bigint "rotina_de_treino_id", null: false
    t.bigint "tipo_de_exercicio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rotina_de_treino_id"], name: "index_tipo_de_exercicio_do_treinos_on_rotina_de_treino_id"
    t.index ["tipo_de_exercicio_id"], name: "index_tipo_de_exercicio_do_treinos_on_tipo_de_exercicio_id"
  end

  create_table "tipo_de_exercicios", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "treinos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exercicios", "tipo_de_exercicios"
  add_foreign_key "rotina_de_treinos", "rotinas"
  add_foreign_key "rotina_de_treinos", "treinos"
  add_foreign_key "tipo_de_exercicio_do_treinos", "rotina_de_treinos"
  add_foreign_key "tipo_de_exercicio_do_treinos", "tipo_de_exercicios"
end
