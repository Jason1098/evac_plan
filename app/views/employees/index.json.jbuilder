json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :primary_location_id, :secondary_location_id, :badge, :department_id, :muster_location_id, :gender
  json.url employee_url(employee, format: :json)
end
