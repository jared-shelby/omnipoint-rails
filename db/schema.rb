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

ActiveRecord::Schema[7.0].define(version: 2022_07_06_183133) do
  create_table "appointments", force: :cascade do |t|
    t.datetime "time"
    t.integer "offer_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["offer_id"], name: "index_appointments_on_offer_id"
  end

  create_table "available_times", force: :cascade do |t|
    t.integer "technician_id"
    t.datetime "time"
    t.index ["technician_id"], name: "index_available_times_on_technician_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "technician_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_offers_on_service_id"
    t.index ["technician_id"], name: "index_offers_on_technician_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicians", force: :cascade do |t|
    t.string "name"
    t.integer "business_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_technicians_on_business_id"
  end

  add_foreign_key "appointments", "clients"
  add_foreign_key "appointments", "offers"
  add_foreign_key "offers", "services"
  add_foreign_key "offers", "technicians"
  add_foreign_key "technicians", "businesses"
end
