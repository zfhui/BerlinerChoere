require 'uri'

class Choir < ActiveRecord::Base
  attr_accessor :name

  belongs_to :category

  default_scope { order('name ASC') }

  validates :name,
            presence: true,
            uniqueness: true,
            length: { minimum: 3 }
  validates :zipcode,
            presence: true,
            numericality: { only_integer: true },
            inclusion: { in: 10115..14199, message: "nur Berliner PLZ" }
  validates :website,
            format: {with: /\A#{URI::regexp}\z/}, if: :website_changed?
  validates :category, presence: true
  validates :street_name, presence: true

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  attr_accessor :image
  mount_uploader :image, ImageUploader

  def full_address
    [street_name, house_no, zipcode, city, country].compact.join(', ')
  end

  private

  def full_address_changed?
    :street_name_changed? || :house_no_changed? || :zipcode_changed?
  end

  def website_changed?
    :website_changed? if self.website.present?
  end
end
