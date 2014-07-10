json.array!(@buildings) do |building|
  json.extract! building, :id, :number, :name
  json.url building_url(building, format: :json)
end
