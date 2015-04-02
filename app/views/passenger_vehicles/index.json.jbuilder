json.array!(@passenger_vehicles) do |passenger_vehicle|
  json.extract! passenger_vehicle, :id, :name, :introduction, :image
  json.url passenger_vehicle_url(passenger_vehicle, format: :json)
end
