json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :surname, :dob, :address, :home_phone, :email, :school, :parent_email, :school_year, :next_year_school, :grade_last_season, :senior, :team, :note
  json.url player_url(player, format: :json)
end
