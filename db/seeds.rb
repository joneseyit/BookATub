# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Listing.delete_all
Reservation.delete_all
##Users
wolfe = User.create(username: "wolfe", password: "wolfe", age: 25, location: "Johnson City")
marco = User.create(username: "marco", password: "marco", age: 27, location: "DC")
syd = User.create(username: "syd", password: "syd", age: 37, location: "NYC")

#Listings
hotel = Listing.create(host_id: wolfe.id, name: "hotel", picture: "picURL", description: "Super Cool", location: "NYC")
spa = Listing.create(host_id: marco.id, name: "spa", picture: "picURL", description: "SPAness", location: "DC")

#Reservations
res1 = Reservation.create(guest_id: syd.id, listing_id: hotel.id, date_time: Time.now)
res2 = Reservation.create(guest_id: syd.id, listing_id: spa.id, date_time: Time.now)
