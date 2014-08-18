json.array!(@grades) do |grade|
  json.extract! grade, :id, :grade_name, :min_size, :max_size, :min_age, :max_age
  json.url grade_url(grade, format: :json)
end
