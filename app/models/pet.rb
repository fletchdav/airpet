class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :bookings, dependent: :destroy
end
