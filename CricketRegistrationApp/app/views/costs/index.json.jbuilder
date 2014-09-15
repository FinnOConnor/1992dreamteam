json.array!(@costs) do |cost|
  json.extract! cost, :id, :name, :description, :cost
  json.url cost_url(cost, format: :json)
end
