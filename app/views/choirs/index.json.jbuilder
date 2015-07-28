json.array!(@choirs) do |choir|
  json.extract! choir, :id, :name, :approved, :categpry_id, :location_name, :street_name, :house_no, :zipcode, :city, :country, :website, :image, :latitude, :longitude
  json.url choir_url(choir, format: :json)
end
