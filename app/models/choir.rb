class Choir < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode          # auto-fetch coordinates

  def full_address
    [street_name, house_no, zipcode, city, country].compact.join(', ')
  end
end
