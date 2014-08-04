json.array!(@teams) do |team|
  json.extract! team, :id, :name, :grade, :coach_id
  json.url team_url(team, format: :json)
end
