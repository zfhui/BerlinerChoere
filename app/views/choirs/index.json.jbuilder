json.array!(@choirs) do |choir|
  json.extract! choir, :id, :name, :categpry_id, :street_name, :house_no, :zipcode, :city, :country, :website, :latitude, :longitude
  json.url choir_url(choir, format: :json)
end
