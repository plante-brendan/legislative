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

ActiveRecord::Schema.define(version: 20180226181841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", id: :serial, force: :cascade do |t|
    t.string "bill_num", null: false
    t.string "chapter_num"
    t.string "cross_file"
    t.string "sponsor"
    t.string "synopsis"
    t.string "title"
    t.string "current_status"
    t.string "first_reading_date_origin"
    t.string "committee_primary_origin"
    t.string "primary_hearing_date_origin"
    t.string "primary_hearing_time_origin"
    t.string "committee_secondary_origin"
    t.string "secondary_hearing_date_origin"
    t.string "secondary_hearing_time_origin"
    t.string "report_date_origin"
    t.string "report_action_origin"
    t.string "secondary_reading_date_origin"
    t.string "secondary_reading_action_origin"
    t.string "third_reading_date_origin"
    t.string "third_reading_action_origin"
    t.string "first_reading_date_opposite"
    t.string "committee_primary_opposite"
    t.string "primary_hearing_date_opposite"
    t.string "primary_hearing_time_opposite"
    t.string "committee_secondary_opposite"
    t.string "secondary_hearing_date_opposite"
    t.string "secondary_hearing_time_opposite"
    t.string "report_date_opposite"
    t.string "report_action_opposite"
    t.string "secondary_reading_date_opposite"
    t.string "secondary_reading_time_opposite"
    t.string "third_reading_date_opposite"
    t.string "third_reading_action_opposite"
    t.string "interaction_between_chambers"
    t.string "passed_by_mga"
    t.string "emergency_bill"
    t.string "constitutional_amendment"
    t.string "broad_subject_name"
    t.string "broad_subject_code"
    t.string "year_session"
    t.string "status_current_as_of"
    t.string "cosponsors", default: [], array: true
    t.string "category"
    t.string "importance"
    t.boolean "vip", default: false, null: false
    t.string "description", default: "", null: false
  end

end
