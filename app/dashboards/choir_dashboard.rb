require "administrate/base_dashboard"

class ChoirDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    category: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    street_name: Field::String,
    house_no: Field::String,
    zipcode: Field::Number,
    city: Field::String,
    country: Field::String,
    website: Field::String,
    latitude: Field::Number.with_options(decimals: 2),
    longitude: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    location_name: Field::String,
    image: Field::String,
    approved: Field::Boolean,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :category,
    :id,
    :name,
    :street_name,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :category,
    :id,
    :name,
    :street_name,
    :house_no,
    :zipcode,
    :city,
    :country,
    :website,
    :latitude,
    :longitude,
    :created_at,
    :updated_at,
    :location_name,
    :image,
    :approved,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :category,
    :name,
    :street_name,
    :house_no,
    :zipcode,
    :city,
    :country,
    :website,
    :latitude,
    :longitude,
    :location_name,
    :image,
    :approved,
  ]

  # Overwrite this method to customize how choirs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(choir)
  #   "Choir ##{choir.id}"
  # end
end
