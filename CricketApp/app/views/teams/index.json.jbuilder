json.array!(@teams) do |team|
  json.extract! team, :id, :name, :coach, :grade, :coach_email
  json.url team_url(team, format: :json)
end
