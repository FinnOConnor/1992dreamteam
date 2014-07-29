json.array!(@parents) do |parent|
  json.extract! parent, :id, :p_first_name, :p_surname, :p_gender, :p_home_phone, :p_mobile, :p_email, :s_first_name, :s_surname, :s_gender, :s_address, :s_home_phone, :s_mobile, :s_email
  json.url parent_url(parent, format: :json)
end
