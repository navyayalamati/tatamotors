json.array!(@uploads) do |upload|
  json.extract! upload, :id, :file_name, :file, :file_type
  json.url upload_url(upload, format: :json)
end
