class Listing < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :reservations
  has_many :guests, through: :reservations
end
