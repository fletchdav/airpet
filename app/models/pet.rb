class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  # after_save :index!, if: :algolia_field_was_updated?
  has_many :bookings, dependent: :destroy

  include AlgoliaSearch
  include CloudinaryHelper
  include Rails.application.routes.url_helpers

  algoliasearch do
    attribute :title, :name, :species, :character
    searchableAttributes ['title', 'name', 'species', 'character']
    add_attribute :path, :cl_path_animal, :pic_path_owner, :availability_color
  end

  # def algolia_field_was_updated
  #   # TODO test if at least one field indexed by Algolia was updated
  # end

  def path
    pet_path(self)
  end

  def cl_path_animal
    this_pet = Pet.find(self.id)
    cl_image_path this_pet.photo
  end

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
