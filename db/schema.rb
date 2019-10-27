# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_17_175850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "adm_username", default: "", null: false
    t.string "password", default: "", null: false
    t.string "adm_name", default: "", null: false
    t.string "adm_cpf", default: "", null: false
    t.string "hospital_name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "donations", force: :cascade do |t|
    t.string "user_cpf", default: "", null: false
    t.string "hospital_name", default: "", null: false
    t.decimal "donated_amount", default: "0.0", null: false
    t.datetime "donation_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "hosp_name", default: "", null: false
    t.string "hosp_city", default: "", null: false
    t.string "hosp_state", default: "", null: false
    t.decimal "a_plus", default: "0.0", null: false
    t.decimal "a_minus", default: "0.0", null: false
    t.decimal "b_plus", default: "0.0", null: false
    t.decimal "b_minus", default: "0.0", null: false
    t.decimal "o_plus", default: "0.0", null: false
    t.decimal "o_minus", default: "0.0", null: false
    t.decimal "ab_plus", default: "0.0", null: false
    t.decimal "ab_minus", default: "0.0", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.integer "weight", default: 0, null: false
    t.integer "age", default: 0, null: false
    t.float "height", default: 0.0, null: false
    t.string "city", default: "", null: false
    t.string "state", default: "", null: false
    t.string "country", default: "", null: false
    t.integer "points", default: 0, null: false
    t.integer "bloodtype"
    t.date "birthdate"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
