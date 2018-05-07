class User < ApplicationRecord
  #As host
  has_many :listings, foreign_key: :host_id
  has_many :host_reservations, class_name:'Reservation', through: :listings, source: :reservations
  has_many :guests, through: :host_reservations

  #As guest
  has_many :reservations, foreign_key: :guest_id
  has_many :guest_listings, class_name: 'Listing',through: :reservations, source: :listing
  has_many :hosts, class_name: 'User', through: :guest_listings
end
