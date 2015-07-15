require 'uri'

class Choir < ActiveRecord::Base
  belongs_to :category
  geocoded_by :full_address
  after_validation :geocode          # auto-fetch coordinates

  validates :name,
            presence: true,
            uniqueness: true, 
            length: { minimum: 3 }
  validates :zipcode,
            presence: true,
            numericality: { only_integer: true },
            inclusion: { in: 10115..14199, message: "nur Berliner PLZ" }
  validates :website,
            format: {with: /\A#{URI::regexp}\z/}
  validates :category, presence: true
  validates :street_name, presence: true

  def full_address
    [street_name, house_no, zipcode, city, country].compact.join(', ')
  end
end
