json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :surname, :gender, :date_of_birth, :address, :contact_phone, :email, :school, :school_year, :school_next_year, :grade_last_season, :senior, :notes, :team_id, :parent_id
  json.url player_url(player, format: :json)
end
