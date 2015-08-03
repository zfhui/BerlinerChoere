require 'rails_helper'

describe Choir do
  before { @choir = FactoryGirl.create(:new_choir) }

  subject { @choir }

  it { should be_valid }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it { should validate_presence_of :zipcode }
  it { should validate_presence_of :category }
  it { should validate_presence_of :street_name }

  context 'when :name is not present' do
    before { @choir.name = '' }
    it { should be_invalid }
  end

  context 'when :zipcode is not present' do
    before { @choir.zipcode = '' }
    it { should be_invalid }
  end

  context 'when :category is not present' do
    before { @choir.category_id = '' }
    it { should be_invalid }
  end

  context 'when :street_name is not present' do
    before { @choir.street_name = '' }
    it { should be_invalid }
  end

  # # associations
  # belongs_to :category
  #
  # # validations
  # validates :name,
  #           presence: true,
  #           uniqueness: true,
  #           length: { minimum: 3 }
  # validates :zipcode,
  #           presence: true,
  #           numericality: { only_integer: true },
  #           inclusion: { in: 10115..14199, message: "nur Berliner PLZ" }
  # validates :website,
  #           format: {with: /\A#{URI::regexp}\z/}, if: :website_changed?
  # validates :category, presence: true
  # validates :street_name, presence: true
  #
  # # scopes
  # default_scope { order('name ASC') }
  #
  # # avatar upload
  # attr_accessor :image
  # mount_uploader :image, ImageUploader
  #
  # after_create :send_approve_mail
  #
  # # geocoding address
  # geocoded_by :full_address
  # after_validation :geocode, if: :full_address_changed?
end
