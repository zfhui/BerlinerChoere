require 'faker'

FactoryGirl.define do
  factory :choir, class: Choir do
    id             1
    name           Faker::Team.name
    category
    website        Faker::Internet.url
    location_name  'KircheXYZ'
    street_name    Faker::Address.street_name
    house_no       1
    zipcode        10435
    city           'Berlin'
    country        'DE'
    image          Faker::Avatar.image
    approved       true
  end

  factory :new_choir, class: Choir do
    name           Faker::Team.name
    category
    website        Faker::Internet.url
    location_name  'KircheABC'
    street_name    Faker::Address.street_name
    house_no       2
    zipcode        10435
    city           'Berlin'
    country        'DE'
    image          Faker::Avatar.image
    approved       false
  end

end
