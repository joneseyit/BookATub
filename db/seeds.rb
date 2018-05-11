# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Listing.delete_all
Reservation.delete_all

images = [
"https://imgur.com/UtuxorG",
"https://imgur.com/nyQEut8",
"https://imgur.com/t6aHkCv",
"https://imgur.com/wb2q9lT",
"https://imgur.com/MsnPfKR",
"https://imgur.com/BzC2dmv",
"https://imgur.com/T2tBeYy",
"https://imgur.com/4l4IVr5",
"https://imgur.com/n4GI2ss",
"https://imgur.com/DRj7z8U",
"https://imgur.com/U1SSTPY",
"https://imgur.com/20RkwK7",
"https://imgur.com/bQdoq2x",
"https://imgur.com/0eDXB3V",
"https://imgur.com/SxsO2Hu",
"https://imgur.com/GoHKp9T",
"https://imgur.com/SIDXulQ",
"https://imgur.com/PQI6epz"
]


##Users
marco = User.create(username: "marco", password: "marco", age: 27, location: "DC")
10.times do
  wolfe = User.create(username: Faker::HarryPotter.character, password: "wolfe", age: rand(18..35), location: Faker::Address.city)
end

#Listings
20.times do |i|
  hotel = Listing.create(host_id: rand(1..5), name: "hotel", picture: images[rand(1..18)], description: Faker::FamilyGuy.quote, location: Faker::Address.city)
end

40.times do
  res = Reservation.create(guest_id: rand(6..10), listing_id: rand(1..20), date_time: Time.now)
end

# #Reservations
# res1 = Reservation.create(guest_id: syd.id, listing_id: hotel.id, date_time: Time.now)
# res2 = Reservation.create(guest_id: syd.id, listing_id: spa.id, date_time: Time.now)
