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

ActiveRecord::Schema[7.0].define(version: 2022_08_29_163913) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "input_membership_fees", force: :cascade do |t|
    t.string "rent_period"
    t.integer "rent_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organisation_unit_id"
    t.index ["organisation_unit_id"], name: "index_input_membership_fees_on_organisation_unit_id"
  end

  create_table "organisation_unit_configs", force: :cascade do |t|
    t.boolean "has_fixed_membership_fee"
    t.integer "fixed_membership_fee_amount"
    t.string "product_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organisation_units", force: :cascade do |t|
    t.string "name"
    t.integer "parent_organisation_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "primary_contact_id"
    t.index ["parent_organisation_unit_id"], name: "index_organisation_units_on_parent_organisation_unit_id"
    t.index ["primary_contact_id"], name: "index_organisation_units_on_primary_contact_id"
  end

  create_table "primary_contacts", force: :cascade do |t|
    t.integer "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

end
