json.array!(@reward_types) do |reward_type|
  json.extract! reward_type, :id, :name, :description
  json.url reward_type_url(reward_type, format: :json)
end
