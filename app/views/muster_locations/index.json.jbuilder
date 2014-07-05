json.array!(@muster_locations) do |muster_location|
  json.extract! muster_location, :id, :name
  json.url muster_location_url(muster_location, format: :json)
end
