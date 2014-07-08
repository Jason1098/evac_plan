json.array!(@locations) do |location|
  json.extract! location, :id, :number, :name, :building
  json.url location_url(location, format: :json)
end
