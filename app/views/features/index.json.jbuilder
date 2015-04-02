json.array!(@features) do |feature|
  json.extract! feature, :id, :passenger_vehicle_id, :feature_type, :feature
  json.url feature_url(feature, format: :json)
end
