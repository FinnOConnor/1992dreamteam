json.array!(@teams) do |team|
  json.extract! team, :id, :name, :grade_id, :coach_id
  json.url team_url(team, format: :json)
end
