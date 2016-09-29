class Trip < ApplicationRecord
  has_many :locations
  validates_presence_of :name
  geocoded_by :origin
  after_validation :geocode
end
