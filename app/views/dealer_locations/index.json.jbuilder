json.array!(@dealer_locations) do |dealer_location|
  json.extract! dealer_location, :id, :country, :name_of_setup, :city, :tel_no, :category, :latitude, :longitude
  json.url dealer_location_url(dealer_location, format: :json)
end
