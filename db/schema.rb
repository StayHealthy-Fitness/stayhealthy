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

ActiveRecord::Schema.define(version: 2019_09_28_192144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "activities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "activities_activity_locations", id: false, force: :cascade do |t|
    t.uuid "activity_location_id", null: false
    t.uuid "activity_id", null: false
    t.index ["activity_id"], name: "index_activities_activity_locations_on_activity_id"
    t.index ["activity_location_id"], name: "index_activities_activity_locations_on_activity_location_id"
  end

  create_table "activities_events", id: false, force: :cascade do |t|
    t.uuid "event_id", null: false
    t.uuid "activity_id", null: false
    t.index ["activity_id"], name: "index_activities_events_on_activity_id"
    t.index ["event_id"], name: "index_activities_events_on_event_id"
  end

  create_table "activities_organization_locations", id: false, force: :cascade do |t|
    t.uuid "organization_location_id", null: false
    t.uuid "activity_id", null: false
    t.index ["activity_id"], name: "idx_org_locations_activities_activity_id"
    t.index ["organization_location_id"], name: "idx_org_locations_activities_org_loc_id"
  end

  create_table "activity_locations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "addresses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "addressable_type"
    t.uuid "addressable_id"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state_or_province"
    t.string "postal_code"
    t.string "country"
    t.integer "latitude"
    t.integer "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "events", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "organization_id"
    t.string "name"
    t.string "description"
    t.string "sign_up_link"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_events_on_organization_id"
  end

  create_table "organization_locations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "organization_id"
    t.string "name"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_organization_locations_on_organization_id"
  end

  create_table "organizations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.boolean "email_validated"
    t.string "phone_number"
    t.string "profile_image_url"
    t.datetime "date_of_birth"
    t.string "password_digest"
    t.string "password_reset_hash"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
