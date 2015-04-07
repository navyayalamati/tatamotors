json.array!(@enquiry_forms) do |enquiry_form|
  json.extract! enquiry_form, :id, :name, :address, :email, :mobile, :city, :zip_code, :vehicle_type, :query
  json.url enquiry_form_url(enquiry_form, format: :json)
end
