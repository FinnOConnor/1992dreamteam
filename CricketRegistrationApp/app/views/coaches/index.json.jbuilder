json.array!(@coaches) do |coach|
  json.extract! coach, :id, :first_name, :surname, :gender, :address, :home_phone, :mobile_phone, :email
  json.url coach_url(coach, format: :json)
end
