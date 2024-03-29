json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :amount, :to, :from, :user_id
  json.url deposit_url(deposit, format: :json)
end
