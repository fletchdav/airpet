class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :bookings, dependent: :destroy

  include AlgoliaSearch
  include CloudinaryHelper
  include Rails.application.routes.url_helpers

  algoliasearch do
    attribute :title, :name, :species, :character, :photo
    searchableAttributes ['title', 'name', 'species', 'character']
    add_attribute :path, :pic_path_owner, :availability_color
  end

  def path
    pet_path(self)
  end

  # def cl_path_animal
  #   cl_image_path self.photo unless self.photo.blank?
  #   # return "http://res.cloudinary.com/dx5mytjh9/#{self.photo.file.identifier}"
  # end

  def pic_path_owner
    self.user.picture
  end

  def availability_color
    if self.availability
      return "green"
    else
      return "red"
    end
  end
end
