require 'faker'

FactoryGirl.define do
  factory :choir, class: Choir do
    id             1
    name           Faker::Team.name
    category_id    1
    website        Faker::Internet.url
    location_name  'KircheXYZ'
    street_name    Faker::Address.street_name
    house_no       1
    zipcode        10435
    city           'Berlin'
    country        'DE'
    latitude       Faker::Address.latitude
    longitude      Faker::Address.longitude
    image          Faker::Avatar.image
    approved       true
  end

end