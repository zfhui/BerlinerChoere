require 'uri'

class Choir < ActiveRecord::Base
  # elasticsearch
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  # associations
  belongs_to :category

  # validations
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

  # scopes
  default_scope { order('name ASC') }

  # avatar upload
  attr_accessor :image
  mount_uploader :image, ImageUploader

  after_create :send_approve_mail

  # geocoding address
  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    [street_name, house_no, zipcode, city, country].compact.join(', ')
  end

  def send_approve_mail
    ApplicationMailer.new_choir_needs_approval(self).deliver_now!
  end

  def as_indexed_json(options={})
    as_json(
      only: [:name, :category, :zipcode]
    )
  end

  private

  def full_address_changed?
    :street_name_changed? || :house_no_changed? || :zipcode_changed?
  end

  def website_changed?
    :website_changed? if self.website.present?
  end
end
