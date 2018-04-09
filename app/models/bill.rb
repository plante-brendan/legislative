class Bill < ApplicationRecord
	require 'csv'
	self.per_page = 12

	def self.search(search)
		where("title ILIKE ? OR \"bill_num\" ILIKE ? OR committee_primary_origin ILIKE ? or category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
	end

	#This updates existing bills and creates new bills using the uploaded CSV file. It is very verbose due to having lots of columns.
	#In the future I may look to simplify this
	def self.import(file)
    CSV.foreach(file.path, {headers: true, :encoding => 'windows-1251:utf-8'}) do |row|

    	if row["Title"].include?("Creation of a State Debt")
    		next
    	end

    	bills = Bill.where(bill_num: row["Bill Number"])
    	if bills.count != 0
    		bill = bills.first
    	else
      	bill = Bill.new
      end

    	bill.bill_num = row["Bill Number"]
    	bill.chapter_num = row["Chapter Number (nnnn)"]
    	bill.cross_file = row["XFile Bill Number"]
    	bill.sponsor = row["Sponsor"]
    	bill.synopsis = row["Synopsis"]
    	bill.title = row["Title"]
    	bill.current_status = row["Current Status"]
    	bill.first_reading_date_origin = row["First Reading Date - House of Origin"]
    	bill.committee_primary_origin = row["Committee Primary - House of Origin"]
    	bill.primary_hearing_date_origin = row["Hearing Date Primary - House of Origin"]
    	bill.primary_hearing_time_origin = row["Hearing Time Primary - House of Origin"]
    	bill.committee_secondary_origin = row["Committee Secondary - House of Origin"]
    	bill.secondary_hearing_date_origin = row["Hearing Date Secondary - House of Origin"]
    	bill.secondary_hearing_time_origin = row["Hearing Time Secondary - House of Origin"]
    	bill.report_date_origin = row["Report Date - House of Origin"]
    	bill.report_action_origin = row["Report Action - House of Origin"]
    	bill.secondary_reading_date_origin = row["Second Reading Date - House of Origin"]
    	bill.secondary_reading_action_origin = row["Second Reading Action - House of Origin"]
    	bill.third_reading_date_origin = row["Third Reading Date - House of Origin"]
    	bill.third_reading_action_origin = row["Third Reading Action - House of Origin"]
    	bill.first_reading_date_opposite = row["First Reading Date - Opposite House"]
    	bill.committee_primary_opposite = row["Committee Primary - Opposite House"]
    	bill.primary_hearing_date_opposite = row["Hearing Date Primary - Opposite House"]
    	bill.primary_hearing_time_opposite = row["Hearing Time Primary - Opposite House"]
    	bill.committee_secondary_opposite = row["Committee Secondary - Opposite House"]
    	bill.secondary_hearing_date_opposite = row["Hearing Date Secondary - Opposite House"]
    	bill.secondary_hearing_time_opposite = row["Hearing Time Secondary - Opposite House"]
    	bill.report_date_opposite = row["Report Date - Opposite House"]
    	bill.report_action_opposite = row["Report Action - Opposite House"]
    	bill.secondary_reading_date_opposite = row["Second Reading Date - Opposite House"]
    	bill.secondary_reading_time_opposite = row["Second Reading Action - Opposite House"]
    	bill.third_reading_date_opposite = row["Third Reading Date - Opposite House"]
    	bill.third_reading_action_opposite = row["Third Reading Action - Opposite House"]
    	bill.interaction_between_chambers = row["Interaction Between Chambers"]
    	bill.passed_by_mga = row["Passed by MGA"]
    	bill.emergency_bill = row["Emergency Bill"]
    	bill.constitutional_amendment = row["Constitutional Amendment"]
    	bill.broad_subject_name = row["Broad Subject Name"]
    	bill.broad_subject_code = row["Broad Subject Code"]
    	bill.year_session = row["year_session"]
    	bill.status_current_as_of = row[" status current as of"]

      bill.save!
    end
  end

end
