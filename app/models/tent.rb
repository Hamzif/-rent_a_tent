class Tent < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :address, presence: true
end
