json.array!(@departments) do |department|
  json.extract! department, :id, :number, :name
  json.url department_url(department, format: :json)
end
