# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bill.create!(bill_num: "HB123", category: "category 1", vip: true, sponsor: "Cecilia", cosponsors: ["Phil", "Brendan"], importance: "vip", title: "Bill Title 1", synopsis: "This is the synopsis. You would use this to edit the description. The purpose of doing this is to make the bill easier to understand.", description: "This is the description of this bill.", committee_primary_origin: "Committee 1")
Bill.create!(bill_num: "HB124", category: "category 2", vip: true, sponsor: "Cecilia", cosponsors: ["Phil"], importance: "vip", title: "Bill Title 2", synopsis: "This is the synopsis. You would use this to edit the description. The purpose of doing this is to make the bill easier to understand.", description: "This is the description of this bill.", committee_primary_origin: "Committee 1", cross_file: "SB127")
Bill.create!(bill_num: "HB125", category: "category 3", vip: true, sponsor: "Cecilia", cosponsors: ["Phil"], importance: "vip", title: "Bill Title 3", synopsis: "This is the synopsis. You would use this to edit the description. The purpose of doing this is to make the bill easier to understand.", description: "This is the description of this bill.", committee_primary_origin: "Committee 2")
Bill.create!(bill_num: "HB126", category: "category 4", vip: true, sponsor: "Cecilia", cosponsors: ["Phil"], importance: "vip", title: "Bill Title 4", synopsis: "This is the synopsis. You would use this to edit the description. The purpose of doing this is to make the bill easier to understand.", description: "This is the description of this bill.", committee_primary_origin: "Committee 3")
Bill.create!(bill_num: "SB127", category: "category 5", vip: true, sponsor: "Cecilia", cosponsors: ["Phil"], importance: "vip", title: "Bill Title 5", synopsis: "This is the synopsis. You would use this to edit the description. The purpose of doing this is to make the bill easier to understand.", description: "This is the description of this bill.", committee_primary_origin: "Committee 2", cross_file: "HB124")
