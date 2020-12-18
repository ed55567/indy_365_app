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

csv_text = File.read(Rails.root.join("lib", "seeds", "bureau-of-developmental-disabilities-services.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  puts row.to_hash["Service Type"], ["Provider Name"], ["Address"], ["City"], ["ZipCode"], ["Latitude"], ["Longitude"]
end

require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "bureau-of-developmental-disabilities-services.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  t = Service.new
  t.service_id = row["service_id"]
  t.name = row["Provider Name"]
  t.address = row["Address"]
  t.city = row["City"]
  t.zipcode = row["ZipCode"]
  t.service_type = row["Service Type"]
  # t.county = row["county"]
  # t.phone = row["phone"]
  # t.website = row["website"]
  # t.email = row["email"]
  # t.languages = row["languages"]
  # t.description = row["description"]
  # t.transportation = row["transportation"]
  t.latitude = row["Latitude"]
  t.longitude = row["Longitude"]
  # t.accessibility_for_disabilities = row["accessibility_for_disabilities"]
  t.save
  # puts "#{t.service_id}, #{t.address} saved"
end

puts "There are now #{Service.count} rows in the service table"
