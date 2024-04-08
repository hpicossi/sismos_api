class Feature < ApplicationRecord
    has_many :comments
    validates :title, :url, :place, :mag_type, :longitude, :latitude, presence: true
    validates :magnitude, numericality: { greater_than_or_equal_to: -1.0, less_than_or_equal_to: 10.0 }
end
  