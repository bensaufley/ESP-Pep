json.array!(@employees) do |employee|
  json.extract! employee, :first_name, :last_name, :active
  json.url employee_url(employee, format: :json)
end
