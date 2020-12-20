# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
csv_text = File.read(Rails.root.join("lib", "seeds", "area-agency-on-aging.csv"))
# puts csv_text
require "csv"
csv_text = File.read(Rails.root.join("lib", "seeds", "area-agency-on-aging.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
# puts csv

require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "marion-county-food-pantries-sites.csv"))
csv_text = File.read(Rails.root.join("lib", "seeds", "marion-county-food-pantries-sites.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  puts row.to_hash["SiteSystem_Name"], ["SiteAddressus_SiteAddressus_address_1"], ["SiteAddressus_SiteAddressus_city"], ["SiteAddressus_SiteAddressus_zip"], ["SiteAddressus_SiteAddressus_county"], ["SiteCustom_Phone1"], ["SiteSystem_Websiteurl"], ["SiteSystem_Description"], ["SiteAddressus_SiteAddressus_latitude"], ["SiteAddressus_SiteAddressus_longitude"]
end

require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "marion-county-food-pantries-sites.csv"))
csv_text = File.read(Rails.root.join("lib", "seeds", "marion-county-food-pantries-sites.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Service.new
  t.service_id = row["service_id"]
  t.name = row["SiteSystem_Name"]
  t.address = row["SiteAddressus_SiteAddressus_address_1"]
  t.city = row["SiteAddressus_SiteAddressus_city"]
  t.zipcode = row["SiteAddressus_SiteAddressus_zip"]
  #t.service_type = row["Service Type"]
  t.county = row["SiteAddressus_SiteAddressus_county"]
  t.phone = row["SiteCustom_Phone1"]
  t.website = row["SiteSystem_Websiteurl"]
  # t.email = row["email"]
  # t.languages = row["languages"]
  t.description = row["SiteSystem_Description"]
  # t.transportation = row["transportation"]
  t.latitude = row["SiteAddressus_SiteAddressus_latitude"]
  t.longitude = row["SiteAddressus_SiteAddressus_longitude"]
  # t.accessibility_for_disabilities = row["accessibility_for_disabilities"]
  t.save
  # puts "#{t.service_id}, #{t.address} saved"
end

puts "There are now #{Service.count} rows in the service table"
