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

ActiveRecord::Schema[8.0].define(version: 2025_05_22_220811) do
  create_table "pacientes", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "tutor_id", null: false
    t.string "nombre"
    t.string "paternal_last_name"
    t.string "maternal_last_name"
    t.date "birth_date"
    t.string "sexo"
    t.string "nivel_discapacidad_cognitiva"
    t.string "nivel_discapacidad_visual"
    t.string "nivel_discapacidad_auditiva"
    t.string "nivel_discapacidad_motriz_gruesa"
    t.string "nivel_discapacidad_motriz_fina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_id"], name: "index_pacientes_on_tutor_id"
  end

  create_table "tutors", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.string "paternal_last_name"
    t.string "maternal_last_name"
    t.string "gender"
    t.date "birth_date"
    t.string "current_profession"
    t.integer "graduation_year"
    t.string "institution_name"
    t.integer "start_year"
    t.string "email"
    t.string "phone_number"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_tutors_on_email", unique: true
    t.index ["phone_number"], name: "index_tutors_on_phone_number", unique: true
  end

  add_foreign_key "pacientes", "tutors"
end
