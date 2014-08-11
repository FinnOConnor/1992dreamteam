json.array!(@payments) do |payment|
  json.extract! payment, :id, :season, :amount_due, :amount_paid, :paid, :player_id
  json.url payment_url(payment, format: :json)
end
