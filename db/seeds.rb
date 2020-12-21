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

csv_text = File.read(Rails.root.join("lib", "seeds", "Housing Authority.csv"))
csv_text = File.read(Rails.root.join("lib", "seeds", "Housing Authority.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  puts row.to_hash["Housing Authority"], ["Property name"], ["Address"], ["City"], ["ZIP code"], ["County"], ["Latitude"], ["Longitude"]
end

require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "Housing Authority.csv"))
csv_text = File.read(Rails.root.join("lib", "seeds", "Housing Authority.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Service.new
  t.service_type = row["Housing Authority"]
  t.service_id = row["service_id"]
  t.name = row["Property name"]
  t.address = row["Address"]
  t.city = row["City"]
  t.zipcode = row["ZIP code"]
  t.county = row["County"]
  # t.phone = row["SiteCustom_Phone1"]
  # t.website = row["SiteSystem_Websiteurl"]
  # # t.email = row["email"]
  # # t.languages = row["languages"]
  # t.description = row["SiteSystem_Description"]
  # t.transportation = row["transportation"]
  t.latitude = row["Latitude"]
  t.longitude = row["Longitude"]
  # t.accessibility_for_disabilities = row["accessibility_for_disabilities"]
  t.save
  # puts "#{t.service_id}, #{t.address} saved"
end

puts "There are now #{Service.count} rows in the service table"
