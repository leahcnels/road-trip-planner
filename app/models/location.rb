class Location < ApplicationRecord
  belongs_to :trip
  validates_presence_of :address
  before_save :titleize_address
  geocoded_by :address
  after_validation :geocode
  private
    def titleize_address
      self.address=(address().titleize())
    end
end
