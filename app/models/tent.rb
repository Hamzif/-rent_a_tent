class Tent < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :address, presence: true
end
