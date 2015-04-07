json.array!(@test_drives) do |test_drife|
  json.extract! test_drife, :id, :first_name, :last_name, :email, :mobile, :residential_address, :office_address, :vehicle_type, :model, :preffered_time, :comments
  json.url test_drife_url(test_drife, format: :json)
end
