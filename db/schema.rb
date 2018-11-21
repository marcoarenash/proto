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

ActiveRecord::Schema.define(version: 2018_11_21_215926) do

  create_table "lcs", force: :cascade do |t|
    t.text "problemas"
    t.text "soluciones"
    t.text "propuesta"
    t.text "ventajas"
    t.text "cliente"
    t.text "metricas"
    t.text "canales"
    t.text "costos"
    t.text "ingresos"
    t.integer "proyect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyect_id"], name: "index_lcs_on_proyect_id"
  end

  create_table "mes", force: :cascade do |t|
    t.text "que_piensa_y_siente"
    t.text "que_ve"
    t.text "que_oye"
    t.text "que_dice_y_hace"
    t.text "esfuerzos"
    t.text "resultados"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mes_on_user_id"
  end

  create_table "proyects", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
