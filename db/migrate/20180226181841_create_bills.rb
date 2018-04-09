class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :bill_num, null: false, unique: true
      t.string :chapter_num
      t.string :cross_file
      t.string :sponsor 
      t.string :synopsis
      t.string :title
      t.string :current_status
      t.string :first_reading_date_origin
      t.string :committee_primary_origin
      t.string :primary_hearing_date_origin
      t.string :primary_hearing_time_origin
      t.string :committee_secondary_origin
      t.string :secondary_hearing_date_origin
      t.string :secondary_hearing_time_origin
      t.string :report_date_origin
      t.string :report_action_origin
      t.string :secondary_reading_date_origin
      t.string :secondary_reading_action_origin
      t.string :third_reading_date_origin
      t.string :third_reading_action_origin
      t.string :first_reading_date_opposite
      t.string :committee_primary_opposite
      t.string :primary_hearing_date_opposite
      t.string :primary_hearing_time_opposite
      t.string :committee_secondary_opposite
      t.string :secondary_hearing_date_opposite
      t.string :secondary_hearing_time_opposite
      t.string :report_date_opposite
      t.string :report_action_opposite
      t.string :secondary_reading_date_opposite
      t.string :secondary_reading_time_opposite
      t.string :third_reading_date_opposite
      t.string :third_reading_action_opposite
      t.string :interaction_between_chambers
      t.string :passed_by_mga
      t.string :emergency_bill
      t.string :constitutional_amendment
      t.string :broad_subject_name
      t.string :broad_subject_code
      t.string :year_session
      t.string :status_current_as_of

      t.string :cosponsors, array: true, default: []
      t.string :category
      t.string :importance
      t.boolean :vip, null: false, default: false
      t.string :description, null: false, default: ""
    end
  end
end