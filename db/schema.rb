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

ActiveRecord::Schema.define(version: 2021_05_05_020846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "cep"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "district"
    t.string "steet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "adoption_histories", force: :cascade do |t|
    t.date "date"
    t.string "status"
    t.text "description"
    t.text "animal_condition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "animal_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string "nome"
    t.string "raca"
    t.date "data_chegada"
    t.boolean "adotado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "farmacinhas", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "brand"
    t.date "validade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feed_stocks", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "brand"
    t.decimal "kg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_records", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.text "medical_procedure"
    t.text "remedy_description"
    t.text "disease"
    t.string "remedy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "partners", primary_key: "email", id: :string, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", primary_key: "cpf", id: :string, limit: 11, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "rg"
    t.string "genero"
    t.date "data_nasc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "number_section"
    t.integer "max_capacity"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "voluntaries", primary_key: "cpf", id: :string, limit: 11, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "rg"
    t.string "genero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
